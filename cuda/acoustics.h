/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	acoustics.h
 * Descriere:	Fisier header in care sunt definite tipurile de date folosite, functiile folosite de aplicatie, eventualele variabile globale
 * 		sau constante folosite in cod.
 */ 

#ifndef ACOUSTIC_H_

#define ACOUSTIC_H_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#define EXIT_ERROR(msg) 			\
{						\
	fprintf(stderr,msg);			\
	fflush(stderr);				\
	exit(EXIT_FAILURE);			\
}

// Numarul maxim admis de scenarii si numarul maxim admis de structuri pentru domeniul unui scenariu
#define MAX_SCENARIOS		10
#define MAX_STRUCTURES		10

// Indicatori pentru laturile structurilor dreptunghiulare
#define N_EDGE			1
#define W_EDGE			2
#define S_EDGE			3
#define E_EDGE			4

// Indicatori pentru laturile structurilor dreptunghiulare
#define NW_CORNER		5
#define NE_CORNER		6
#define SE_CORNER		7
#define SW_CORNER		8


// Structura folosita pentru a retine informatii despre sursa acustica
typedef struct
{
	int x;			// linia sursei acustice
	int y;			// coloana sursei acustice
	int radius;		// raza sursei sferice
	double p_amp;		// valoarea pulsatiei sursei acustice
} source_t;

// Structura folosita pentru a retine informatii despre structurile din domeniu
typedef struct
{
	int c_points[4][2];	// cele 4 puncte din colturile structurii
} structure_t;

// Structura de tip scenariu in care sunt retinute datele (parametrii) necesari unei simulari
typedef struct
{
	int nx;					// numarul de linii ale domeniului
	int ny;					// numarul de coloane ale domeniului
	int SAVE_TIME;				// numarul de pasi de discretizare dupa care trebuie salvate rezultatele
	int nr_struct;				// numarul de structuri din domeniu
	structure_t structure[MAX_STRUCTURES];	// structurile din domeniu
	source_t source;			// sursa acustica
	double H;				// pasul de discretizare spatiala
	double MAX_TIME;			// timpul maxim pentru rulare (in secunde)
	double TIME_STEP;			// pasul de discretizare temporala
} scenario_t;

// Variabilele globale pentru memorarea tuturor datelor de intrare pentru scenarii
scenario_t scenario[MAX_SCENARIOS];
int num_scenarios;
int scn_index;

// Variabile globale pentru rularea unui scenariu
int nx;
int ny;
double H;
double MAX_TIME;
double TIME_STEP;
int SAVE_TIME;

// Variabile globale ale algoritmului de simulare
double **ua, **ub, **uc, **xchg;
double gain;


int import_data(char *path);
void print_import_data();

int export_to_vtk(int step);
int export_to_gnuplot(int scn_index, double time);

void load_scenario();
void unload_scenario();
void init_scenario();

int in_structure(int x, int y);
void s_compute_acoustics();


#endif
