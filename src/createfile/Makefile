AS = nasm
ASFLAGS = -f elf
LD = ld
LDFLAGS = -m elf_i386
OBJ = create.o

%.o:%.asm
	$(AS) $(ASFLAGS)  $< -o $@

create: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^
	 
clean:
	rm -f create create.o output.txt
