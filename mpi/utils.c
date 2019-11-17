/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	utils.c
 * Descriere:	Fisier sursa in care sunt implementate cateva functii utile aplicatiei
 */
 
#include "acoustics.h"

void load_scenario()
{
	nx = scenario[scn_index].nx;
	ny = scenario[scn_index].ny;
	H = scenario[scn_index].H;
	MAX_TIME = scenario[scn_index].MAX_TIME;
	TIME_STEP = scenario[scn_index].TIME_STEP;
	SAVE_TIME = scenario[scn_index].SAVE_TIME;
}

void unload_scenario()
{
	nx = ny = H = MAX_TIME = TIME_STEP = SAVE_TIME = 0;
	free(uc);
	free(ub);
	free(ua);
}

void init_scenario(int l_ny)
{
	int i;
	
	ua = (double**)malloc(l_ny*sizeof(double*));
	ub = (double**)malloc(l_ny*sizeof(double*));
	uc = (double**)malloc(l_ny*sizeof(double*));
	for(i=0;i<l_ny;i++)
	{
		ua[i] = (double*)calloc(nx,sizeof(double));
		ub[i] = (double*)calloc(nx,sizeof(double));
		uc[i] = (double*)calloc(nx,sizeof(double));
	}
}

void recalculate_positions(int rank, int numtask)
{
	if(rank == 0)
		return;
	
	int i,j;
	
	scenario[scn_index].source.x -= rank*((ny/numtask)-1);
	
	for(i=0;i<scenario[scn_index].nr_struct;i++)
		for(j=0;j<4;j++)
			scenario[scn_index].structure[i].c_points[j][0] -= rank*((ny/numtask)-1);
}
