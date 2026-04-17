---
layout: default
title: Conhecendo o makefile
permalink: /using-makefile-1
---

# Estrutura do Makefile

O `Makefile` é organizado em **regras**. Cada regra descreve como um arquivo deve ser gerado a partir de outros arquivos e quais comandos precisam ser executados para isso.

De forma geral, cada regra possui três partes:

- **alvo** (*target*): o arquivo ou ação que queremos gerar;
- **pré-requisitos** (*prerequisites*): os arquivos necessários para gerar esse alvo;
- **instruções** (*recipe*): os comandos executados pelo `make`.

```
# alvo        pré-requisitos
target: prerequisites
	recipe
```

## Entendendo uma regra

Quando o `make` encontra uma regra, ele verifica se o alvo já existe e se está atualizado em relação aos seus pré-requisitos. Se o alvo não existir, ou se algum pré-requisito for mais recente, os comandos da regra serão executados.

- `target`: é o nome do arquivo que será gerado, como um executável, objeto ou biblioteca.
- `prerequisites`: são os arquivos necessários para construir o alvo, como `.asm`, `.c`, `.h` ou `.inc`.
- `recipe`: são os comandos usados para produzir o alvo.

## Exemplo prático

Vamos usar novamente o exemplo do clássico `hello.asm`.

```makefile
hello.o: hello.asm
	nasm -f elf32 -o hello.o hello.asm

hello: hello.o
	ld -m elf_i386 -o hello hello.o

clean:
	rm -f hello.o hello
```

Nesse exemplo:

- a regra `hello.o: hello.asm` monta o código Assembly e gera o arquivo objeto `hello.o`;
- a regra `hello: hello.o` liga o objeto e gera o executável `hello`;
- a regra `clean` remove os arquivos gerados durante o processo.

## Executando o Makefile

Depois de criar o `Makefile` no mesmo diretório do arquivo `hello.asm`, basta executar:

```bash
make
```

O `make` executará a primeira regra principal do arquivo e gerará o executável `hello`.

Se quiser limpar os arquivos produzidos durante o build, execute:

```bash
make clean
```

## Observação importante

Nos comandos do `Makefile`, cada linha de instrução deve começar com uma **tabulação real**. Se você usar espaços no lugar de `TAB`, o `make` poderá acusar erro.

| [Anterior](/using-makefile) | [Principal](/) | Próximo |
