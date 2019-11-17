/*
 * Student:	Trascau Mihai
 * Grupa:	344C4
 * 
 * Lucrare:	Ecuatia undelor pentru acustica 2D
 * Fisier:	export_data.c
 * Descriere:	Fisier sursa in care sunt implementate functiile de export de date (pentru performanta - format pentru GNUPLOT, rezultatele
 * 		simluarii - format VTK pentru Paraview)
 */
 
#include "acoustics.h"

int export_to_vtk(int step)
{
	FILE *f;
	char *path,*buf;
	
	path = (char*)calloc(256,sizeof(char));
	buf = (char*)calloc(256,sizeof(char));
	
	getcwd(buf,255);
	sprintf(path,"%s/export/acoustics[scn%d]_step%d.vtk",buf,scn_index,step);
	
	f = fopen(path,"w+");
	if(f == NULL)
	{
		printf("[EROARE] Exportul datelor in format .VTK a esuat deoarece nu s-a putut deschide fisierul\n");
		free(path);
		free(buf);
		return -1;
	}
	else
	{
		long int i,j;
		fprintf(f,"# vtk DataFile Version 2.0\n");
		fprintf(f,"This is a test file for the vtk format file export\n");
		fprintf(f,"ASCII\n");
		fprintf(f,"DATASET UNSTRUCTURED_GRID\n\n");
		fprintf(f,"POINTS %d double\n",(nx+1)*(ny+1));
		for(i=0;i<ny+1;i++)
		for(j=0;j<nx+1;j++)
			fprintf(f,"%.20lf %.20lf %.20lf\n",(double)i/(double)ny,(double)j/(double)nx,0.0);
		fprintf(f,"\nCELLS %d %d\n",nx*ny,5*(nx*ny));
		for(i=0;i<ny;i++)
		for(j=0;j<nx;j++)
			fprintf(f,"4  %ld  %ld  %ld  %ld\n",j+i*nx+i,j+i*nx+i+1,j+(i+1)*nx+i+2,j+(i+1)*nx+i+1);
		fprintf(f,"\nCELL_TYPES   %d\n",nx*ny);
		for(i=0;i<ny*nx;i++)
		fprintf(f,"9 ");
		fprintf(f,"\nCELL_DATA   %d\n",(nx)*(ny));
		fprintf(f,"SCALARS u FLOAT\n");
		fprintf(f,"LOOKUP_TABLE values_table\n");
		for(i=0;i<ny;i++)
		for(j=0;j<nx;j++)
		{
			if(!in_structure(i,j))
				fprintf(f,"%.20lf\n",uc[i][j]);
			else
				fprintf(f,"%.20lf\n",scenario[scn_index].amp);
		}
		
		fclose(f);
	}
	
	free(path);
	free(buf);
	return 0;
}

int export_to_gnuplot(int scn_index, double time)
{
    FILE *f;
    double cells = scenario[scn_index].nx * scenario[scn_index].ny;

    char *path,*buf;

    path = (char*)calloc(256,sizeof(char));
    buf = (char*)calloc(256,sizeof(char));
    getcwd(buf,255);

    sprintf(path,"%s/export/acoustics_performance.dat",buf);


    f = fopen(path,"a");
    if(f == NULL)
    {
        printf("\n[ERROR] EXPORTING DATA TO .DAT FILE FORMAT FAILED - UNABLE TO OPEN SAVEFILE!!!\n");
        return -1;
    }
    else
    {
        fprintf(f,"%f   %f\n",cells,time);
        fclose(f);
        return 0;
    }
}

