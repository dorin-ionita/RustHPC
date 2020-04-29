icc -c -o import_data.o import_data.cpp -ltbb -std=c++11 -lrt -lm -fno-builtin-memset --enable-checking
icc -c -o export_data.o export_data.cpp -ltbb -std=c++11 -lrt -lm -fno-builtin-memset --enable-checking
icc -c -o acoustics_alg.o acoustics_alg.cpp -ltbb -std=c++11 -lrt -lm -fno-builtin-memset --enable-checking
icc -c -o utils.o utils.cpp -ltbb -std=c++11 -lrt -lm -fno-builtin-memset --enable-checking
icc acoustics.cpp import_data.o export_data.o acoustics_alg.o utils.o   -o acoustics -ltbb -std=c++11 -lrt -lm -fno-builtin-memset --enable-checking
