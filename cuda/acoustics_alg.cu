/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	acoustics_alg.h
 * Descriere:	Fisier sursa care contine implementarile pentru algoritmul utilizat (in cazul nostru MDF pentru ecuatia propagarii undei)
 */ 

#include "acoustics.h"
#include <math.h>

extern "C" double **ua, **ub, **uc, gain;

double *xchg_gpu;

// Variabile globale pentru rularea unui scenariu
extern "C" int nx;
extern "C" int ny;
extern "C" double H;
extern "C" double MAX_TIME;
extern "C" double TIME_STEP;
extern "C" int SAVE_TIME;

extern "C" scenario_t scenario[MAX_SCENARIOS];
extern "C" int num_scenarios;
extern "C" int scn_index;

double P_0;
double tau;
double P_r[1000][1000];
double chi[200][200];
//__device__ double gpu_chi[1000][1000];
// TODO: take notes of this

// required by the export_to_vtk function
int in_structure(int x, int y)
{
	int i;
	for(i=0;i<scenario[scn_index].nr_struct;i++)
	{
		if(x > scenario[scn_index].structure[i].c_points[0][0] && x < scenario[scn_index].structure[i].c_points[3][0])
		if(y > scenario[scn_index].structure[i].c_points[0][1] && y < scenario[scn_index].structure[i].c_points[1][1])
			return 1;
	}
	return 0;
}

__global__ void free_path_loss_kernel(double amp, double *gpu_chi)
{
	printf("[GPU] Enter Free Path Loss Kernel\n");

	double G = 10;
	double sigma = 1;
	double L = 0.051; // Initial 1
	double f = 3 * 1000000;
	double lightspeed = 3 * 1000000;// missing one zero maybe
	double env_pent = 1.001;
	double lambda = lightspeed / f;
	double R;
	double P_r;
	//double gpu_chi[1000][1000];
	double tau = 1;
	double P_0 = tau * (amp * amp);	

	R = sqrt((double)(blockIdx.x * blockIdx.x + blockIdx.y * blockIdx.y));
	P_r = P_0 * G * G * sigma * lambda * lambda;
	P_r /= (pow(4 * M_PI, 3) * pow(R, env_pent) * L);
	gpu_chi[blockIdx.x * blockDim.x + blockIdx.y] = sqrt(P_r / P_0);
	gpu_chi[blockIdx.x * blockDim.x + blockIdx.y] /= 10;
	gpu_chi[blockIdx.x * blockDim.x + blockIdx.y] += 0.9;
	// TODO: check if this kind of addressing is ok. It doesn't seem to be
	printf("[GPU] gpu_chi[%d][%d]=%lf\n", blockIdx.x, blockIdx.y, gpu_chi[blockIdx.x * blockDim.x + blockIdx.y]);
//	gpu_chi[blockIdx.x][blockIdx.y] = sqrt(P_r / P_0);
//	gpu_chi[blockIdx.x][blockIdx.y] /= 10;
//	gpu_chi[blockIdx.x][blockIdx.y] += 0.9;
//	printf("[GPU] gpu_chi[%d][%d]=%lf\n", blockIdx.x, blockIdx.y, gpu_chi[blockIdx.x][blockIdx.y]);
	printf("[GPU] Exit Free Path Loss Kernel\n");
}

__device__ int is_source_gpu(int radius, int source_active,
		int src_x, int src_y)
{
	if (!source_active)
		return 0;
	if (sqrt(pow(src_x - blockIdx.x, 2) + pow(src_y - blockIdx.y, 2)) <= radius)
		return 1;
	return 0;
}

__global__ void set_all_zero_kernel(double *ua_gpu, double *ub_gpu, double *uc_gpu)
{
	ua_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
	ub_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
	uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
	// TODO: sync CPU after this -> move to utils.cu file
}

__global__ void wireless_src_pulse_kernel(int step, double amp,
	       	double MAX_TIME, double TIME_STEP,
		int radius, int source_active, int src_x, int src_y,
		double *ua_gpu, double *ub_gpu, double *uc_gpu)
{
	if (step < (int)(MAX_TIME / TIME_STEP) / 2){
		// Pulse source
		if (is_source_gpu(radius, 1, src_x, src_y))
			uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = amp * fabs(sin(step * M_PI/4));
	} else if (source_active){
		if (is_source_gpu(radius, source_active, src_x, src_y)) {
			ua_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
			ub_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
			uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;
		}
		// All threads should reach this point before setting source_active -> need a thread barrier here. Or simply write 2 kernels and syncCPU. CPU should set source_active = 0 after freezing.
		source_active = 0;	
	}
}

__device__ int on_edge_gpu()
{
	if (0 == blockIdx.x && 0 != blockIdx.y && blockIdx.y != blockDim.x - 1)
		return N_EDGE;
	if (blockDim.x == blockIdx.y - 1 && blockIdx.y != 0 && blockIdx.y != blockDim.x - 1)
		return S_EDGE;
	if (0 == blockIdx.y && 0 != blockIdx.x && blockIdx.x != blockDim.y - 1)
		return W_EDGE;
	if (blockIdx.y == blockDim.x - 1 && blockIdx.x != 0 && blockIdx.x != blockDim.y - 1)
		return E_EDGE;
	return 0;
}

__device__ int on_corner_gpu()
{
	if (0 == blockIdx.x && blockIdx.y == 0)
		return NW_CORNER;
	if (0 == blockIdx.x && blockIdx.y == blockDim.x - 1)
		return NE_CORNER;
	if (blockDim.y - 1 == blockIdx.x && blockIdx.y == 0)
		return SW_CORNER;
	if (blockDim.y - 1 == blockIdx.x && blockIdx.y == blockDim.x - 1)
		return SE_CORNER;
	return 0;
}

__device__ int on_structure_edge_gpu()
{
	// TODO: this is tricky because we have structure
	// 		and it needs malloc
	return 0;
}

__device__ int in_structure_gpu()
{
	return 0;
}

__device__ int on_structure_corner_gpu()
{
	return 0;
}

__device__ double compute_edge_node_gpu(int side, double *ub_gpu)
{
	switch(side)
	{
		case N_EDGE:
			return ub_gpu[(blockIdx.x + 1) * blockDim.x + blockIdx.y];
		case E_EDGE:
			return ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y - 1)];
		case S_EDGE:
			return ub_gpu[(blockIdx.x - 1) * blockDim.x + blockIdx.y];
		case W_EDGE:
			return ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y + 1)];
		default:
			return 0;
	}
}

__device__ double compute_corner_node_gpu(int corner, double *ub_gpu)
{
	switch(corner)
	{
		case NW_CORNER:
			return (ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y+1)] +
					ub_gpu[(blockIdx.x+1) * blockDim.x + blockIdx.y])/2;
		case NE_CORNER:
			return (ub_gpu[(blockIdx.x + 1) * blockDim.x + blockIdx.y] + 
					ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y-1)])/2;
		case SE_CORNER:
			return (ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y-1)] +
					ub_gpu[(blockIdx.x-1) * blockDim.x + blockIdx.y])/2;
		case SW_CORNER:
			return (ub_gpu[(blockIdx.x - 1) * blockDim.x + blockIdx.y] +
					ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y + 1)])/2;
		default:
			return 0;
	}
}

__device__ double compute_structure_corner_node_gpu(int corner, double *ub_gpu)
{
	switch(corner)
	{
		case NW_CORNER:
			return (ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y-1)] +
					ub_gpu[(blockIdx.x-1) * blockDim.x + blockIdx.y])/2;
		case NE_CORNER:
			return (ub_gpu[(blockIdx.x-1) * blockDim.x + blockIdx.y] +
					ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y+1)])/2;
		case SE_CORNER:
			return (ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y+1)] +
					ub_gpu[(blockIdx.x+1) * blockDim.x + blockIdx.y])/2;
		case SW_CORNER:
			return (ub_gpu[(blockIdx.x+1) * blockDim.x + blockIdx.y] +
					ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y-1)])/2;
		default:
			return 0;
	}
}

__device__ double compute_structure_edge_node_gpu(int side, double *ub_gpu)
{
	switch(side)
	{
		case N_EDGE:
			return ub_gpu[(blockIdx.x-1) * blockDim.x + blockIdx.y];
		case E_EDGE:
			return ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y+1)];
		case S_EDGE:
			return ub_gpu[(blockIdx.x+1) * blockDim.x + blockIdx.y];
		case W_EDGE:
			return ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y-1)];
		default:
			return 0;
	}
}

__device__ double compute_node_gpu(double gain,
		double *ua_gpu, double *ub_gpu, double *uc_gpu)
{
	return (2 * ub_gpu[blockIdx.x * blockDim.x + blockIdx.y] -
			ua_gpu[blockIdx.x * blockDim.x + blockIdx.y] +
			gain * (ub_gpu[(blockIdx.x + 1) * blockDim.x + blockIdx.y] -
				4 * ub_gpu[blockIdx.x * blockDim.x + blockIdx.y] +
				ub_gpu[(blockIdx.x - 1) * blockDim.x + blockIdx.y] +
				ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y + 1)] +
				ub_gpu[blockIdx.x * blockDim.x + (blockIdx.y - 1)]));
}

__global__ void wireless_propagate_kernel(double gain, int radius, int source_active,
	       	int src_x, int src_y,	
		double *ua_gpu, double *ub_gpu, double *uc_gpu, double *chi_gpu)
{
	int place;

	if (!on_corner_gpu() &&
		       !on_edge_gpu() &&
		       !is_source_gpu(radius, source_active, src_x, src_y) &&
		       !on_structure_edge_gpu() &&
		       !on_structure_corner_gpu() &&
		       !in_structure_gpu())
		uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = compute_node_gpu(
				gain, ua_gpu, ub_gpu, uc_gpu);
	else if (place = on_edge_gpu())
		uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = compute_edge_node_gpu(
				place, ub_gpu);
	else if (place = on_corner_gpu())
		uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = compute_corner_node_gpu(
				place, ub_gpu);
	else if (place = on_structure_edge_gpu())
		uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = compute_structure_edge_node_gpu(
				place, ub_gpu);
	else if (place = on_structure_corner_gpu())
		uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] = compute_structure_corner_node_gpu(
				place, ub_gpu);

	ua_gpu[blockIdx.x * blockDim.x + blockIdx.y] = 0;

	uc_gpu[blockIdx.x * blockDim.x + blockIdx.y] *=
		chi_gpu[blockIdx.x * blockDim.x + blockIdx.y];
}


void free_path_loss()
{
	double G = 10;
	double sigma = 1;
	double L = 0.051; // Initial 1
	double f = 3 * 1000000;
	double lightspeed = 3 * 1000000;// missing one zero maybe
	double env_pent = 1.001;
	double lambda = lightspeed / f;
	double R;

	int x, y;
	for (x = 0; x < nx; x++){
		for (y = 0; y < ny; y++){

			R = sqrt(x * x + y * y);

			P_r[x][y] = P_0 * G * G * sigma * lambda * lambda;
			P_r[x][y] /= (pow(4 * M_PI, 3) * pow(R, env_pent) * L) ;
			chi[x][y] =  sqrt(P_r[x][y] / P_0);
			chi[x][y] /= 10;
			chi[x][y] += 0.9;
			//printf("Chi[%d][%d]=%lf\n", x, y, chi[x][y]);
		}
	}
}

void init_power(double amp)
{
	tau = 1;
	P_0 = tau * (amp * amp);
}

void s_compute_acoustics()
{
	printf("nx=%d ny=%d\n", nx, ny);
	double *gpu_chi;
	double *ua_gpu, *ub_gpu, *uc_gpu;
	cudaError_t cuda_status;
	dim3 dimBlock(nx, ny);

	cuda_status = cudaMalloc((void **)&gpu_chi, nx * ny * sizeof(double));
	if (cudaSuccess != cuda_status){
		printf("Failed cudaMalloc gpu_chi with message %s\n", cudaGetErrorString(cuda_status));
	}
	cuda_status = cudaMalloc((void **)&ua_gpu, nx * ny * sizeof(double *));
	if (cudaSuccess != cuda_status){
		printf("Failed cudaMalloc ua_gpu with message %s\n", cudaGetErrorString(cuda_status));
	}
	cuda_status = cudaMalloc((void **)&ub_gpu, nx * ny * sizeof(double *));
	if (cudaSuccess != cuda_status){
		printf("Failed cudaMalloc ub_gpu with message %s\n", cudaGetErrorString(cuda_status));
	}
	cuda_status = cudaMalloc((void **)&uc_gpu, nx * ny * sizeof(double *));
	if (cudaSuccess != cuda_status){
		printf("Failed cudaMalloc uc_gpu with message %s\n", cudaGetErrorString(cuda_status));
	}

	set_all_zero_kernel<<<dimBlock, 1>>>(ua_gpu, ub_gpu, uc_gpu);
	cuda_status = cudaPeekAtLastError();
	if (cudaSuccess != cuda_status){
		printf("Failed launching set_all_zero_kernel  %s\n", cudaGetErrorString(cuda_status));
	} else {
		printf("Managed to launch set_all_zero_kernel\n");
	}
	// I need to sync GPU with CPU here so that u* vectors are safely zeroized
	cuda_status = cudaDeviceSynchronize();	
	free_path_loss_kernel<<<dimBlock, 1>>>(scenario[scn_index].source.p_amp, gpu_chi);
	cuda_status = cudaPeekAtLastError();
	printf("[CPU] Launched Kernel - Blocking until GPU execution complete\n");
	cuda_status = cudaDeviceSynchronize();

	printf("[CPU] Execued Kernel\n");
	cuda_status = cudaMemcpy(chi, gpu_chi, 200 * 200 * sizeof(double), cudaMemcpyDeviceToHost);
	if (cudaSuccess != cuda_status){
		printf("Problem copying from cuda %s\n", cudaGetErrorString(cuda_status));
	}
	// TODO: bug here
	// TODO: don't do useless copy here. Next kernel can reuse the gpu_chi var
	// Document about paraview

	int step = 0;
	int source_active = 1;
	int radius = scenario[scn_index].source.radius;
	
	/*
	for (i = 0; i < nx; i++)
		for (j = 0; j < ny; j++)
			printf("chi[%d][%d]=%lf\n", i, j, chi[i][j]);
	*/

	while(step < (int)(MAX_TIME/TIME_STEP))
	{
		// Pulse source
		wireless_src_pulse_kernel<<<dimBlock, 1>>>(
				step,
				scenario[scn_index].source.p_amp,
				MAX_TIME,
				TIME_STEP,
				radius,
				source_active,
				scenario[scn_index].source.x /* src_x */,
				scenario[scn_index].source.y /* src_y */,
				ua_gpu,
				ub_gpu,
				uc_gpu);
		if (step >= (int)(MAX_TIME / TIME_STEP) / 2)
			source_active = 0;
		cudaDeviceSynchronize();
		
		// Propagate wave
		// TODO: include chi factor here
		wireless_propagate_kernel<<<dimBlock, 1>>>(
				gain,
				radius,
				source_active,
				scenario[scn_index].source.x,
				scenario[scn_index].source.y,
				ua_gpu,
				ub_gpu,
				uc_gpu,
				gpu_chi);
		cudaDeviceSynchronize();

		// !!!!!! TODO 2: save time should be extremely rare here, maybe just once	
		/*if(step%SAVE_TIME == 0){
			cudaMemcpy(ua, ua_gpu, nx * ny * sizeof(double), cudaMemcpyDeviceToHost);
			cudaMemcpy(ub, ub_gpu, nx * ny * sizeof(double), cudaMemcpyDeviceToHost);
			cudaMemcpy(uc, uc_gpu, nx * ny * sizeof(double), cudaMemcpyDeviceToHost);
                        export_to_vtk(step);
			// Produces error coz ua is ** and ua_gpu is *
		}*/	
	
		xchg_gpu = ua_gpu;
		ua_gpu = ub_gpu;
		ub_gpu = uc_gpu;
		uc_gpu = xchg_gpu;
		
		step++;
	}
	
	cudaFree(gpu_chi);
	cudaFree(ua_gpu);
	cudaFree(ub_gpu);
	cudaFree(uc_gpu);
}
