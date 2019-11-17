CC = mpicc
CFLAGS = -lm -xopenmp -xO3 -L/opt/sun/sunstudio12.1/rtlibs/amd64 -g
OBJ = import_data.o export_data.o acoustics_alg.o utils.o

all: acoustics
	@mkdir -p export
acoustics: $(OBJ)
clean:
	rm -f *~ *.o acoustics
