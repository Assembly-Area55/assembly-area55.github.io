---
layout: default
title: Iniciando com o NASM
permalink: /nasm
---

# Nasm - The Netwide Assembler Project

O Nasm Netwide Assembler, é a ferramenta (compilador) livre para plataforma x86, pode ser usado para compilar códigos 16, 32 e 64 bits.

Necessáriamente faz-se o uso de um link-editor para transformar o código objeto gerado pelo compilador em um binário de acordo com o sistema operacional que estivermos desenvolvendo, os formatos de saida do nasm podem ser vistos pelo manual "man nasm", para facilitar segue o trecho com os formatos de saida. [manual](/nasm-output-format)

Como toda linguagem de programação o NASM requer que se código fonte siga um padrão de formatação:

O código do NASM é composto por sessões como será descrito abaixo.

* **SECTION .data**
Trata-se da sessão onde iremos iniciar os dados, algo como as constantes em linguagens de alto nível

* **SECTION .bss**
Sessão onde serão declaradas as variaveis dinâmicas que serão alteradas no decorrer do desenvolvimento.

* **SECTION .text**
Nesta sessão é onde ocorre a mágica propriamente dita, nesta sessão colocamos nosso código.


Outra sessão importante que devemos declarar apenas no arquivo principal de seu código o que inicializa o programa, neste caso temos duas formas de declarar o tal **inicializador**, por padrão fazemos uso do **global _start**

O **global _start** é usado quando compilarmos o código com o NASM e linkamos com a ferramenta ld (disponível no pacote binutils).

Outra forma de inicializar o código seria utilizando o inicializado como global main:

Este inicializador é utilizado para quando vamos fazer uso do GCC, por padrão o GCC ao compilar o código ele busca em seu código pre-processado o inicializador **global main**, isso iremos ver mais a frente como utilizar NASM acessando a GLIBC e fazendo uso dos recursos já desenvolvidos.

Veremos também os prós e contras de se utilizar a GLIBC, abaixo um template para quando for iniciar a programar.

```
SECTION .data
; Dados inicializados (constantes)

SECTION .bss
; Dados não inicializados (variavéis)

SECTION .text
; Conteudo do programa.

global _start:

_start:
; Aqui se inicia o código, aqui se inicia a execução.

```

## Exemplo prático.

Bem vamos a um simples porem bem didático do uso do template apresentado acima, vamos ao famoso hello world em versão assembly 32bits.

```
SECTION .data
  mensagem  db  'Olá, Mundo!', 0xa, 0x0d

SECTION .text

global _start:

_start:

  mov edx, 13         ; Tamanho da mensagem
  mov ecx, mensagem   ; Mensagem a apresentar
  mov ebx, 1          ; File descriptor (STDOUT)
  mov eax, 4          ; syscall 4 (sys_write)
  int 0x80            ; Chama o kernel

  mov eax, 1          ; Syscall 1 (sys_exit)
  int 0x80            ; Chama o kernel

```
Copie o código acima ou baixe para testar executar a compilação.

```
$ wget https://raw.githubusercontent.com/Assembly-Area55/assembly-area55.github.io/master/src/hello.asm
$ nasm -f elf hello.asm
$ ld -m elf_i386 -s -o hello hello.o
```

Feito isso teremos 3 arquivos no diretório, **hello.asm**, **hello.o** (Arquivo objeto), e **hello** (Arquivo ELF).

Executando o arquivo teremos a seguinte saida:

```
$ ./hello
Olá, Mundo!
```

Agora vamos entender o que foi feito?

1. Inicialmente foi feito o download do código, mas recomendo mesmo que faça a digitação isso ajuda muito na assimilação de uma nova linguagem.
2. Após a criação do arquivo executamos o comando **nasm -f elf hello.asm** <br>
  Feito a compilação, que é o processo de gerar um código intermediário, ou como chamamos geramos um objeto.
  O parametro -f indica o tipo de executável que o nasm irá gerar, mais sobre os formatos veja aqui no site o [manual](/nasm-output-format) sobre isso.
3. Faremos agora o processo de linkeditar, que é o processo de transformar nosso código intermediário em um
  executável, neste passo executamos o seguinte comando:<br>
  **ld -m elf_i386 -s -o hello hello.o**

Onde:

  |-m elf_i386 | Serve para indicar o formato que será transformado o objeto. |
  | -s | Retira informações do simbolos usados para debug. |
  | -o |Nome do executável final. |
  | hello.o | Nome dos arquivos objetos usados para formar o executavel. |

Mais códigos serão vistos posteriormente, no momento para mais informações acesso o site [NASM](http://www.nasm.us).
