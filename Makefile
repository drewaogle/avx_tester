all: avx avx2

avx: avx.cc
	g++ -Wno-psabi  -march=core-avx2 -o avx avx.cc 
avx2: avx2.cc
	g++ -Wno-psabi  -march=core-avx2 -o avx2 avx2.cc 
