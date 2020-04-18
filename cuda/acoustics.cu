/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	acoustics.c
 * Descriere:	Fisier sursa in care este implementat tot programul folosind functiile descrise in celelalte fisiere sursa.
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

static void initial_cuda_check(void)
{
	int no_devices;
	cudaGetDeviceCount(&no_devices);
	printf("Number of available GPUs you have: %d\n", no_devices);
}

int main(int argc, char *argv[])
{
	initial_cuda_check();

	time_t start_time;
	
	if(argc != 2)
		EXIT_ERROR("[EROARE] Numar incorect de argumente. Folosire: ./acoustics <input_file_name>\n\n");
	
	if(import_data(argv[1]))
		EXIT_ERROR("[EROARE] Datele de intrare nu au putut fi incarcate\n\n");
	
	scn_index = 0;
	while(scn_index < num_scenarios)
	{
		start_time = time(NULL);
		
		load_scenario();
		init_scenario();
		
		s_compute_acoustics();
		
		unload_scenario();

		export_to_gnuplot(scn_index,difftime(time(NULL),start_time));

		scn_index++;
	}
	
	return 0;
}
