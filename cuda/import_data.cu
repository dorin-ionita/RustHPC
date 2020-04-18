/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	import_data.c
 * Descriere:	Fisier sursa in care sunt implementate functiile de incarcare datelor (parametrii din fisierele de input care alcatuiesc unul sau
 * 		mai multe scenarii de rulare)
 */ 

#include "acoustics.h"

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

int import_data(char *path)
{
	FILE *f;
	
	f = fopen(path,"r");
	if(f == NULL)
	{
		fprintf(stderr,"[EROARE] Deschiderea fisierului de input esuata\n");
		fflush(stderr);
		return -1;
	}
	else
	{
		char *line = (char*)calloc(256,sizeof(char));
		int aux, scn_index = -1, struct_index = -1, scn_ok = 0, struct_ok = 0;
		
		while(fgets(line,256,f) != NULL)
		{
			char *p = (char*)strtok(line," =");
			if(p != NULL)
			{
				if(!strcmp("[NUM_SCENARIOS]", p))
				{
					aux = atoi((const char*)strtok(NULL," =\n"));
					if(aux < MAX_SCENARIOS)
						num_scenarios = aux;
					else
						num_scenarios = MAX_SCENARIOS;
				}
				else if(!strcmp("[SCENARIO]", p))
				{
					aux = atoi((const char*)strtok(NULL," ="));
					if(aux < num_scenarios && aux >= 0)
					{
						scn_index = aux;
						scn_ok = 1;
						scenario[scn_index].nr_struct = 0;
					}
					else
						scn_ok = 0;
				}
				else if(!strcmp("[SIZEX]", p) && scn_ok)
					scenario[scn_index].nx = atoi((const char*)strtok(NULL," ="));
				else if(!strcmp("[SIZEY]",p) && scn_ok)
					scenario[scn_index].ny = atoi((const char*)strtok(NULL," ="));
				else if(!strcmp("[H]",p) && scn_ok)
					scenario[scn_index].H = atof((const char*)strtok(NULL," ="));
				else if(!strcmp("[MAX_TIME]",p) && scn_ok)
					scenario[scn_index].MAX_TIME = atof((const char*)strtok(NULL," ="));
				else if(!strcmp("[TIME_STEP]",p) && scn_ok)
					scenario[scn_index].TIME_STEP = atof((const char*)strtok(NULL," ="));
				else if(!strcmp("[SAVE_TIME]",p) && scn_ok)
					scenario[scn_index].SAVE_TIME = atoi((const char*)strtok(NULL," ="));
				else if(!strcmp("[SRC_X]",p) && scn_ok)
					scenario[scn_index].source.x = (int)(atof((const char*)strtok(NULL," ="))*scenario[scn_index].ny);
				else if(!strcmp("[SRC_Y]",p) && scn_ok)
					scenario[scn_index].source.y = (int)(atof((const char*)strtok(NULL," ="))*scenario[scn_index].nx);
				else if(!strcmp("[SRC_RADIUS]",p) && scn_ok)
					scenario[scn_index].source.radius = atoi((const char*)strtok(NULL," ="));
				else if(!strcmp("[SRC_AMPLITUDE]",p) && scn_ok)
					scenario[scn_index].source.p_amp = atof((const char*)strtok(NULL," ="));
				else if(!strcmp("[NUM_STRUCTURES]",p) && scn_ok)
				{
					aux = atoi((const char*)strtok(NULL," ="));
					if(aux < MAX_STRUCTURES)
						scenario[scn_index].nr_struct = aux;
					else
						scenario[scn_index].nr_struct = MAX_STRUCTURES;
				}
				else if(!strcmp("[STRUCTURE]",p) && scn_ok)
				{
					aux = atoi((const char*)strtok(NULL," ="));
					if(aux < scenario[scn_index].nr_struct && aux >= 0)
					{
						struct_index = aux;
						struct_ok = 1;
					}
					else
						struct_ok = 0;
				}
				else if(!strcmp("[P1]",p) && scn_ok)
				{
					scenario[scn_index].structure[struct_index].c_points[0][0] = (int)(atof((const char*)strtok(NULL," ="))*(double)scenario[scn_index].ny);
					scenario[scn_index].structure[struct_index].c_points[0][1] = (int)(atof((const char*)strtok(NULL," \n"))*(double)scenario[scn_index].nx);
				}
				else if(!strcmp("[P2]",p) && scn_ok)
				{
					scenario[scn_index].structure[struct_index].c_points[1][0] = (int)(atof((const char*)strtok(NULL," ="))*(double)scenario[scn_index].ny);
					scenario[scn_index].structure[struct_index].c_points[1][1] = (int)(atof((const char*)strtok(NULL," \n"))*(double)scenario[scn_index].nx);
				}
				else if(!strcmp("[P3]",p) && scn_ok)
				{
					scenario[scn_index].structure[struct_index].c_points[2][0] = (int)(atof((const char*)strtok(NULL," ="))*(double)scenario[scn_index].ny);
					scenario[scn_index].structure[struct_index].c_points[2][1] = (int)(atof((const char*)strtok(NULL," \n"))*(double)scenario[scn_index].nx);
				}
				else if(!strcmp("[P4]",p) && scn_ok)
				{
					scenario[scn_index].structure[struct_index].c_points[3][0] = (int)(atof((const char*)strtok(NULL," ="))*(double)scenario[scn_index].ny);
					scenario[scn_index].structure[struct_index].c_points[3][1] = (int)(atof((const char*)strtok(NULL," \n"))*(double)scenario[scn_index].nx);
				}
			}
		}
		
		free(line);
		return 0;
	}
}

void print_import_data()
{
	int i,j;
	printf("%d scenarii incarcate\n\n",num_scenarios);
	for(i=0;i<num_scenarios;i++)
	{
		printf("Scenariul %d:\n",i);
		printf(" >> Generale <<\n");
		printf("	Dimesiuni: 		%d x %d\n",scenario[i].nx,scenario[i].ny);
		printf("	Durata simulare:	%f\n",scenario[i].MAX_TIME);
		printf("	Pasul de timp:		%f\n",scenario[i].TIME_STEP);
		printf("	Pas discretizare:	%f\n",scenario[i].H);
		printf("	Durate de interes:	%d\n",scenario[i].SAVE_TIME);
		printf(" >> Sursa <<\n");
		printf("	Coordonate sursa:	(%d,%d)\n",scenario[i].source.x,scenario[i].source.y);
		printf("	Raza sursei:		%d\n",scenario[i].source.radius);
		printf("	Amplitudine:		%f\n",scenario[i].source.p_amp);
		printf(" >> Structuri <<\n");
		printf("	Numar structuri:	%d\n",scenario[i].nr_struct);
		for(j=0;j<scenario[i].nr_struct;j++)
		{
			printf("	Structura [%d]:		(%d,%d) ",j,scenario[i].structure[j].c_points[0][0],scenario[i].structure[j].c_points[0][1]);
			printf("(%d,%d) ",scenario[i].structure[j].c_points[1][0],scenario[i].structure[j].c_points[1][1]);
			printf("(%d,%d) ",scenario[i].structure[j].c_points[2][0],scenario[i].structure[j].c_points[2][1]);
			printf("(%d,%d)\n",scenario[i].structure[j].c_points[3][0],scenario[i].structure[j].c_points[3][1]);
		}
	}
}
