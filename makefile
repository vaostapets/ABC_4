# makefile for perimeter.asm
task: main.c input.c inrnd.c output.c sort.o extdata.h 
	gcc -g -o task main.c input.c inrnd.c output.c sort.o -no-pie
sort.o: sort.asm
	nasm -f elf64 -g -F dwarf sort.asm -l sort.lst
