# Nasm - The Netwide Assembler Project

Nasm é a ferramenta (compilador) utilizado para transformar nosso código assembly em Objeto,
Necessáriamente faz-se o uso de um link-editor para transformar o código objeto em um binario de acordo com o sistema operacional que estiver desenvolvendo, os formatos de saida do nasm podem ser vistos pelo manual ou para facilitar segue o trecho com os formatos de saida. [manual](nasm-output-format.md "Trecho dos formatos de saida.")

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
