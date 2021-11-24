all: direct_c

.PHONY:	setFlags clean

setFlags:
CFLAGS = -lcudart

direct_c: direct.cpp
	mkdir -p bin
	mpicxx $(CFLAGS) -o bin/direct_c direct.cpp

direct_acc_c: direct_acc.c
	mkdir -p bin
	pgcc $(CFLAGS) -o bin/direct_acc_c direct_acc.c

clean:
	rm -f *.o
	rm -f *.mod
	rm -rf bin
