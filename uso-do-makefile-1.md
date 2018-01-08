---
layout: default
title: Conhecendo o makefile
permalink: /using-makefile-1
---

# Estrutura do Makefile

Vamos conhecer um pouco da estrutura do Makefile. Ele é composto basicamente por regras (rules).
Cada regra contém 3 elementos, Alvo (target), pré-requisitos e instruções.

```
# Alvo        Pré-requisitos
target ... : prerequisites ...
        # Instruções
        recipe 0
        recipe 1
        recipe 2
        ...
```

Regras:

Cada regra é composta por um alvo, cada alvo possui seus pré-requisitos seguidos de seus comandos responsáveis por gerar seu target (Alvo).

* target: é o nome do arquivo que será gerado através das instruções (recipe), por exemplo um arquivo executável, biblioteca ou objeto.

* prerequisites: são os arquivos .c .asm .h .inc ou quaisquer outros arquivos necessários para se gerar o alvo.

* Instruções: são os comandos ou macros utilizados para gerar o alvo.

Um exemplo que poderá ser utilizado na manutenção de seus códigos, vamos utilizar o bom e velho Hello World.

Makefile
```
hello.o: hello.asm
	 nasm -f elf hello.asm

hello: hello.o
	ld -m elf_i386 -o hello hello.o

clean:
	rm -f hello.o hello
```

Ao criar o Makefile com o conteúdo acima, execute em seu terminal na pasta criada anteriormente com o código do hello.asm.

Digite um simples *make* e verá a magica acontecer.



| [Anterior](/using-makefile) | [Principal](/index) | Próximo |
