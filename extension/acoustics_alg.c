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
double P_r[2000][2000];
double chi[2000][2000];

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
	//printf("a\n");

	init_power(scenario[scn_index].source.p_amp);
	free_path_loss();

	//printf("b\n");
	int i,j;
	int step = 0;
	int source_active = 1;
	int place;
	int radius = scenario[scn_index].source.radius;
	
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
		
		for(i=0;i<ny;i++)
		for(j=0;j<nx;j++)
		{
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
/*		
		for (i = 0; i < nx; i++){
			for (j = 0; j < ny; j++){
				if (i != 0 || j != 0){
					//printf("step=%d uc[%d][%d][before]=%lf \n", step, i, j, uc[i][j]);
					//uc[i][j] *= log(sqrt(i * i + j * j)) <= 200 ? 
					//	     (log(sqrt(i * i + j * j)) >= 0.1 ? log(sqrt(i * i + j * j)) : 0.1)
					//	     : 200;
					uc[i][j] *= log(sqrt(i * i + j * j));
					uc[i][j] = uc[i][j] >= 0.1 ? (uc[i][j] <= 200 ? uc[i][j] : 200) : 0.1;
					//printf("uc[%d][%d][after]=%lf\n", i, j, uc[i][j]);
				}
			}
		}
*/
		if(step%SAVE_TIME == 0)
			export_to_vtk(step);

		for (i = 0; i < nx; i++){
			for (j = 0; j < ny; j++){
				uc[i][j] *= chi[i][j];
			}
		}

	/*	
		for (i = 0; i < nx; i++){
			for (j = 0; j < ny; j++){
				//printf("chi[%d][%d]=%f\n", i, j, chi[i][j]); 
				//uc[i][j] *= chi[i][j];
				//uc[i][j] /= 1.01;
				// Note: between 1.1 and 1.0001 seems ok
				uc[i][j] *=  chi[i][j];
				// 0.9 * 099
			}
		}
	*/	

		xchg = ua;
		ua = ub;
		ub = uc;
		uc = xchg;
		
		step++;
	}
}
