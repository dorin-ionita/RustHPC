/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	acoustics_alg.h
 * Descriere:	Fisier sursa care contine implementarile pentru algoritmul utilizat (in cazul nostru MDF pentru ecuatia propagarii undei)
 */ 
 
#include "acoustics.h"

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

void s_compute_acoustics()
{
	int i,j;
	int step = 0;
	int source_active = 1;
	int place;
	int radius = scenario[scn_index].source.radius;
	
	// printf("radius=%d\n", radius);
	printf("max_time=%f\n", MAX_TIME);
	printf("time_step=%f\n", TIME_STEP);
	printf("comparand=%d\n", (int)(MAX_TIME/TIME_STEP));
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
			if(!on_corner(i,j) && !on_edge(i,j) && !is_source(i,j,radius,source_active) && !on_structure_edge(i,j) && !on_structure_corner(i,j) && !in_structure(i,j))
				uc[i][j] = compute_node(i,j);
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
		
		if(step%SAVE_TIME == 0)
			export_to_vtk(step);
		
		xchg = ua;
		ua = ub;
		ub = uc;
		uc = xchg;
		
		step++;
	}
}
