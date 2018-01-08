.PHONY: all

all: detect_vm

detect.o:
	nasm -f elf -l detect.lst detect.asm

detect_vm: detect.o
		ld -m elf_i386 detect.o -o detect_vm

.PHONY: clean
clean:
	rm -rf *.o detect_vm *.lst
