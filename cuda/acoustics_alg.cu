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

extern "C" double **ua, **ub, **uc, **xchg, gain;

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

int on_edge(int x, int y)
{
	if(x == 0 && y != 0 && y != nx-1)
		return N_EDGE;
	if(x == ny-1 && y != 0 && y != nx-1)
		return S_EDGE;
	if(y == 0 && x != 0 && x != ny-1)
		return W_EDGE;
	if(y == nx-1 && x != 0 && x != ny-1)
		return E_EDGE;
	return 0;
}

int on_corner(int x, int y)
{
	if(x == 0 && y == 0)
		return NW_CORNER;
	if(x == 0 && y == nx-1)
		return NE_CORNER;
	if(x == ny-1 && y == 0)
		return SW_CORNER;
	if(x == ny-1 && y == nx-1)
		return SE_CORNER;
	return 0;
}

int on_structure_edge(int x, int y)
{
	int i;
	for(i=0;i<scenario[scn_index].nr_struct;i++)
	{
		if(y > scenario[scn_index].structure[i].c_points[0][1] && y < scenario[scn_index].structure[i].c_points[1][1])
			if(x == scenario[scn_index].structure[i].c_points[0][0])
				return N_EDGE;
		if(x > scenario[scn_index].structure[i].c_points[1][0] && x < scenario[scn_index].structure[i].c_points[2][0])
			if(y == scenario[scn_index].structure[i].c_points[1][1])
				return E_EDGE;
		if(y > scenario[scn_index].structure[i].c_points[3][1] && y < scenario[scn_index].structure[i].c_points[2][1])
			if(x == scenario[scn_index].structure[i].c_points[3][0])
				return S_EDGE;
		if(x > scenario[scn_index].structure[i].c_points[0][0] && x < scenario[scn_index].structure[i].c_points[3][0])
			if(y == scenario[scn_index].structure[i].c_points[0][1])
				return W_EDGE;
	}
	return 0;
}

int on_structure_corner(int x, int y)
{
	int i;
	for(i=0;i<scenario[scn_index].nr_struct;i++)
	{
		if(x == scenario[scn_index].structure[i].c_points[0][0] && y == scenario[scn_index].structure[i].c_points[0][1])
			return NW_CORNER;
		if(x == scenario[scn_index].structure[i].c_points[1][0] && y == scenario[scn_index].structure[i].c_points[1][1])
			return NE_CORNER;
		if(x == scenario[scn_index].structure[i].c_points[2][0] && y == scenario[scn_index].structure[i].c_points[2][1])
			return SE_CORNER;
		if(x == scenario[scn_index].structure[i].c_points[3][0] && y == scenario[scn_index].structure[i].c_points[3][1])
			return SW_CORNER;
	}
	return 0;
}

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

double compute_node(int x, int y)
{
	return (2*ub[x][y] - ua[x][y] + gain * (ub[x+1][y] - 4*ub[x][y] + ub[x-1][y] + ub[x][y+1] + ub[x][y-1]));
}

double compute_edge_node(int i, int j, int side)
{
	switch(side)
	{
		case N_EDGE:
			return ub[i+1][j];
		case E_EDGE:
			return ub[i][j-1];
		case S_EDGE:
			return ub[i-1][j];
		case W_EDGE:
			return ub[i][j+1];
		default:
			return 0;
	}
}

double compute_corner_node(int i, int j, int corner)
{
	switch(corner)
	{
		case NW_CORNER:
			return (ub[i][j+1]+ub[i+1][j])/2;
		case NE_CORNER:
			return (ub[i+1][j]+ub[i][j-1])/2;
		case SE_CORNER:
			return (ub[i][j-1]+ub[i-1][j])/2;
		case SW_CORNER:
			return (ub[i-1][j]+ub[i][j+1])/2;
		default:
			return 0;
	}
}

double compute_structure_corner_node(int i, int j, int corner)
{
	switch(corner)
	{
		case NW_CORNER:
			return (ub[i][j-1]+ub[i-1][j])/2;
		case NE_CORNER:
			return (ub[i-1][j]+ub[i][j+1])/2;
		case SE_CORNER:
			return (ub[i][j+1]+ub[i+1][j])/2;
		case SW_CORNER:
			return (ub[i+1][j]+ub[i][j-1])/2;
		default:
			return 0;
	}
}

double compute_structure_edge_node(int i, int j, int side)
{
	switch(side)
	{
		case N_EDGE:
			return ub[i-1][j];
		case E_EDGE:
			return ub[i][j+1];
		case S_EDGE:
			return ub[i+1][j];
		case W_EDGE:
			return ub[i][j-1];
		default:
			return 0;
	}
}

int is_source(int x, int y, int radius, int source_active)
{
	if(!source_active)
		return 0;
	if(sqrt(pow(scenario[scn_index].source.x-x,2)+pow(scenario[scn_index].source.y-y,2)) <= radius)
		return 1;
	return 0;
}

void pulse_source(int radius, int step, double amp)
{
	int i,j;
	for(i=0;i<ny;i++)
	for(j=0;j<nx;j++)
		if(is_source(i,j,radius,1))
				uc[i][j] = amp*fabs(sin(step*M_PI/4));
}

double P_0;
double tau;
double P_r[1000][1000];
double chi[1000][1000];
//__device__ double gpu_chi[1000][1000];
// TODO: take notes of this

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
	printf("[GPU] gpu_chi[%d][%d]=%lf\n", blockIdx.x, blockIdx.y, gpu_chi[blockIdx.x * blockDim.x + blockIdx.y]);
//	gpu_chi[blockIdx.x][blockIdx.y] = sqrt(P_r / P_0);
//	gpu_chi[blockIdx.x][blockIdx.y] /= 10;
//	gpu_chi[blockIdx.x][blockIdx.y] += 0.9;
//	printf("[GPU] gpu_chi[%d][%d]=%lf\n", blockIdx.x, blockIdx.y, gpu_chi[blockIdx.x][blockIdx.y]);
	printf("[GPU] Exit Free Path Loss Kernel\n");
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
	//init_power(scenario[scn_index].source.p_amp);
	double *gpu_chi;
	//double **chi = (double **)malloc(1000 * 1000 * sizeof(double));
	//free_path_loss();
	cudaError_t cuda_status;
	cudaMalloc((void **)&gpu_chi, 1000 * 1000 * sizeof(double));
	dim3 dimBlock(nx, ny);
	free_path_loss_kernel<<<dimBlock, 1>>>(scenario[scn_index].source.p_amp, gpu_chi);
	printf("[CPU] Launched Kernel - Blocking until GPU execution complete\n");
	cudaDeviceSynchronize();

	printf("[CPU] Execued Kernel\n");
	cuda_status = cudaMemcpy(chi, gpu_chi, 1000 * 1000 * sizeof(double), cudaMemcpyDeviceToHost);
	if (cudaSuccess != cuda_status){
		printf("Problem copying from cuda %s\n", cudaGetErrorString(cuda_status));
	}
	// TODO: don't do useless copy here. Next kernel can reuse the gpu_chi var
	// Document about paraview

	int i,j;
	int step = 0;
	int source_active = 1;
	int place;
	int radius = scenario[scn_index].source.radius;
	
	for (i = 0; i < nx; i++)
		for (j = 0; j < ny; j++)
			printf("chi[%d][%d]=%lf\n", i, j, chi[i][j]);

	while(step < (int)(MAX_TIME/TIME_STEP))
	{
		if(step < (int)(MAX_TIME/TIME_STEP)/2)
			pulse_source(radius,step,scenario[scn_index].source.p_amp);
		else if(source_active)
		{
			for(i=0;i<ny;i++)
			for(j=0;j<nx;j++)
			{
				if(is_source(i,j,radius,source_active))
					uc[i][j] = ub[i][j] = ua[i][j] = 0;
			}
			source_active = 0;
		}
		// TODO 4: try to integrate this for in a single loop. Is it possible?
		
		for(i=0;i<ny;i++)
		for(j=0;j<nx;j++)
		{
			// TODO 2: Any pair (i,j) is indepenednt of all others (i, j) pairs
			// 		=> This means that each (i, j) can be a block 
			if(!on_corner(i,j) && !on_edge(i,j) && !is_source(i,j,radius,source_active) && !on_structure_edge(i,j) && !on_structure_corner(i,j) && !in_structure(i,j)){
				uc[i][j] = compute_node(i,j);
			}
			else if((place = on_edge(i,j)))
				uc[i][j] = compute_edge_node(i,j,place);
			else if((place = on_corner(i,j)))
				uc[i][j] = compute_corner_node(i,j,place);
			else if((place = on_structure_edge(i,j)))
				uc[i][j] = compute_structure_edge_node(i,j,place);
			else if((place = on_structure_corner(i,j)))
				uc[i][j] = compute_structure_corner_node(i,j,place);
			
			ua[i][j] = 0;
		}
	
		// TODO 2: save time should be extremely rare here, maybe just once	
		if(step%SAVE_TIME == 0)
                        export_to_vtk(step);	
		
		for (i = 0; i < nx; i++){
			for (j = 0; j < ny; j++){
				uc[i][j] *=  chi[i][j];
				// TODO 3: move this in the above for -> how about saving the data
			}
		}
		
		// TODO 2: sync here for cuda
		xchg = ua;
		ua = ub;
		ub = uc;
		uc = xchg;
		
		step++;
	}
	
	cudaFree(gpu_chi);
}
