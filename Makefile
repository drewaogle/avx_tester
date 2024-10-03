all: avx avx2 ill
.PHONY: clean

# march tells g++ that it should expect certain types of instructions to be generated.
# ( means you don't need the -Wno-psabi )
avx: avx.cc
	g++  -march=core-avx2 -o avx avx.cc 
avx2: avx2.cc
	g++  -march=core-avx2 -o avx2 avx2.cc 
ill: ill.cc
	g++ -march=core-avx2 -o ill ill.cc 
clean:
	rm avx avx2 ill
