all: calc

CalcSum_.o: CalcSum_.asm
	nasm -f elf CalcSum_.asm

calc: calc.o CalcSum_.o
	gcc -g -m32 calc.c CalcSum_.o -o calc

clean:
	rm -f calc calc.o CalcSum_.o
