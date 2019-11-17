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

void init_scenario()
{
	int i;
	
	ua = (double**)malloc(ny*sizeof(double*));
	ub = (double**)malloc(ny*sizeof(double*));
	uc = (double**)malloc(ny*sizeof(double*));
	for(i=0;i<ny;i++)
	{
		ua[i] = (double*)calloc(nx,sizeof(double));
		ub[i] = (double*)calloc(nx,sizeof(double));
		uc[i] = (double*)calloc(nx,sizeof(double));
	}
}
