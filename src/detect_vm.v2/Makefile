AS:=nasm
ASFLAGS:=-f elf
LDFLAGS:=-m elf_i386

.PHONY: all

all: detect_vm

detect.o:
	nasm -f elf -l detect.lst detect.asm

function.o: 
	nasm -f elf function.asm

vmware.o: 
	nasm -f elf vmware.asm

detect_vm: detect.o function.o vmware.o
		ld -m elf_i386 detect.o function.o vmware.o -o detect_vm

.PHONY: clean
clean:
	rm -rf *.o detect_vm *.lst
