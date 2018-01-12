all: cpuid

cpuid: cpuid.o
	ld -m elf_i386 cpuid.o -o cpuid

cpuid.o: cpuid.asm 
	nasm -f elf cpuid.asm

clean:
	rm -f cpuid cpuid.o
