.PHONY: all clean

all: detect_vm

# Compilação do arquivo de objetos .o
detect.o:
	nasm -f elf32 -g -l detect.lst detect.asm  # Adicionando -g para depuração (opcional)

# Geração do binário final
detect_vm: detect.o
	ld -m elf_i386 -s -o detect_vm detect.o  # Usando a flag -s para remover símbolos desnecessários

# Limpeza de arquivos gerados
clean:
	rm -rf *.o detect_vm *.lst
