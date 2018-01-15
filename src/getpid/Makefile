all: getpid 

getpid.o: getpid.asm 
	nasm -f elf getpid.asm -l getpid.lst


getpid: getpid.o
	ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc getpid.o -o getpid 
clean:
	rm -f getpid getpid.o getpid.lst
