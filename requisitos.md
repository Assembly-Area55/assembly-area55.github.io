---
layout: default
permalink: /requisitos
---

# Requisitos

Os Requisitos que serão descritos envolvem o sistema operacional Debian / Ubuntu, para outros sistemas operacionais  costumam ser bem semelhantes, futuramente irei escrever sobre os requisitos para outros sistemas.

Os softwares que iremos utilizar nos treinamentos serão o nasm (compilador), gcc, strace, ld (linkeditor) e eventualmente hexdump que iremos ver mais a frente.

Para Debian e Ubuntu proceda a instalação dos pacotes:

```
$ sudo apt-get install build-essential \
  nasm strace g++-multilib libc6-dev-i386 bsdmainutils
```
