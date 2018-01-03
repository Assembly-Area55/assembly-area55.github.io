AS = nasm
ASFLAGS = -f elf
LD = ld
LDFLAGS = -m elf_i386
OBJ = hello.o

%.o:%.asm
	$(AS) $(ASFLAGS)  $< -o $@

hello: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^
	 
clean:
	rm -f hello.o hello
