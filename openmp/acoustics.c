/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	acoustics.c
 * Descriere:	Fisier sursa in care este implementat tot programul folosind functiile descrise in celelalte fisiere sursa.
 */ 
 
#include "acoustics.h"

int main(int argc, char *argv[])
{
	time_t start;
	
	if(argc != 2)
		EXIT_ERROR("[EROARE] Numar incorect de argumente. Folosire: ./acoustics <input_file_name>\n\n");
	
	if(import_data(argv[1]))
		EXIT_ERROR("[EROARE] Datele de intrare nu au putut fi incarcate\n\n");
	
	print_import_data();
	
	scn_index = 0;
	while(scn_index < num_scenarios)
	{
		start = time(NULL);
		
		omp_set_num_threads(scenario[scn_index].OMP_THREADS);
		
		load_scenario();
		init_scenario();
		
		s_compute_acoustics();
		
		export_to_gnuplot(scn_index,difftime(time(NULL),start));
		
		unload_scenario();
		scn_index++;
	}
	
	return 0;
}
