# Nasm - The Netwide Assembler Project

Nasm é a ferramenta (compilador) utilizado para transformar nosso código assembly em Objeto,
Necessáriamente faz-se o uso de um link-editor para transformar o código objeto em um binario de acordo com o sistema operacional que estiver desenvolvendo, os formatos de saida do nasm podem ser vistos pelo manual ou para facilitar segue o trecho com os formatos de saida. [manual](nasm-output-format.md)

Como toda linguagem de programação o NASM requer que se código fonte siga um padrão de formatação:

O código do NASM é composto por sessões como será descrito abaixo.

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
  mensagem  db  'Olá, Mundo!', 0Ah

SECTION .text

global _start:

_start:

  mov edx, 12         ; Tamanho da mensagem
  mov ecx, mensagem   ; Mensagem a apresentar
  mov ebx, 1          ; File descriptor (STDOUT)
  mov eax, 4          ; syscall 4 (sys_write)
  int 0x80            ; Chama o kernel

  mov eax, 1          ; Syscall 1 (sys_exit)
  int 0x80            ; Chama o kernel

```
Copie o código acima ou baixe para testar executar a compilação.

```
wget https://raw.githubusercontent.com/Assembly-Area55/assembly-area55.github.io/master/src/hello.asm
nasm -f elf hello.asm`
ld -m elf_i386 -s -o hello hello.o
```
