# AS determina qual assembler vai ser utilizado "GAS / Nasm ou Yasm"
AS=nasm

all: cpuid


cpuid: cpuid.o
	ld -m elf_i386 cpuid.o -o cpuid

cpuid.o: cpuid.asm 
	${AS} -f elf cpuid.asm

clean:
	rm -f cpuid cpuid.o
