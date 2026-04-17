---
layout: default
permalink: /requisitos
---

# Requisitos

Esta página descreve um ambiente mínimo para acompanhar os exemplos do curso em **Linux**, com foco inicial em **Debian** e **Ubuntu**. Em outras distribuições, os nomes dos pacotes podem mudar, mas a ideia geral continua a mesma.

## Ferramentas utilizadas

Ao longo do material, vamos trabalhar principalmente com:

- `nasm`: assembler usado para montar os arquivos `.asm`;
- `ld`: linker responsável por gerar o executável final;
- `gcc`: útil quando quisermos integrar Assembly com código C;
- `strace`: ferramenta para observar chamadas de sistema;
- utilitários como `hexdump`, `objdump` e `readelf`: úteis para inspecionar binários.

## Instalação no Debian e Ubuntu

No Debian e no Ubuntu, você pode instalar o conjunto básico com:

```bash
sudo apt-get update
sudo apt-get install build-essential \
  nasm strace g++-multilib libc6-dev-i386 bsdmainutils
```

## O que cada pacote entrega

- `build-essential`: instala ferramentas básicas de compilação, como `gcc`, `make` e headers essenciais;
- `nasm`: instala o assembler usado nos exemplos;
- `strace`: permite acompanhar syscalls feitas pelos programas;
- `g++-multilib`: adiciona suporte à geração de binários 32-bit;
- `libc6-dev-i386`: fornece headers e bibliotecas para desenvolvimento em `i386`;
- `bsdmainutils`: inclui utilitários clássicos, como `hexdump`, dependendo da versão da distribuição.

## Verificando o ambiente

Depois da instalação, vale conferir se as ferramentas principais estão disponíveis:

```bash
nasm -v
ld -v
gcc --version
strace -V
```

Se esses comandos responderem corretamente, o ambiente básico já está pronto para os primeiros exemplos.

## Observação sobre arquitetura

Boa parte deste material trabalha com exemplos em **Linux 32-bit (i386)**, mesmo em máquinas `x86_64`. Por isso os pacotes `g++-multilib` e `libc6-dev-i386` são importantes: eles permitem montar, linkar e testar exemplos voltados para essa ABI.

## Próximo passo

Com o ambiente instalado, você já pode seguir para:

- [Conhecendo a linguagem Assembly](/linguagem.html)
- [Iniciando com o NASM](/nasm)
- [Usando o Makefile](/using-makefile)
