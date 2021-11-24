all:

.PHONY:	setFlags clean

setFlags:
CFLAGS = -lcudart

ompi: direct_ompi.cpp
	mkdir -p bin
	mpicxx $(CFLAGS) -o bin/direct_ompi direct_ompi.cpp

mpich: direct_mpich.cpp
	mkdir -p bin
	mpicxx $(CFLAGS) -o bin/direct_mpich direct_mpich.cpp

clean:
	rm -f *.o
	rm -rf bin
