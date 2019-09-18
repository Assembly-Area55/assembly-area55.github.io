---
layout: default
title: Conhecendo o makefile
permalink: /using-makefile
---

# Usando o Makefile

O objetivo do Makefile é definir regras de compilação para projetos de software. Tais regras são definidas em arquivo 
chamado Makefile. O programa make interpreta o conteúdo do Makefile e executa as regras lá descritas.
Alguns Sistemas Operacionais trazem programas similares ao make, tais como gmake, nmake, tmake, cmake etc. 
O programa make pode variar de um sistema a outro pois não faz parte de nenhuma normalização, mas em nossos exemplos 
iremos fazer uso do [GNU/Make](https://www.gnu.org/software/make/){:target='_blank'}.

O texto contido em um Makefile é usado para a compilação, ligação(linking), montagem de arquivos de projeto entre outras tarefas como limpeza de arquivos temporários, execução de comandos, etc.

Vantagens de se utilizar o Makefile:

Evita a compilação de arquivos desnecessários. Por exemplo, se seu programa possui muitos arquivos de código e você 
altera apenas um, o make descobre (comparando as datas de alteração dos arquivos fontes com as dos arquivos 
anteriormente compilados) qual arquivo foi alterado e compila apenas a código que foi modificado reduzindo assim 
drasticamente o tempo de desenvolvimento.

Automatizar tarefas rotineiras como limpeza de vários arquivos criados temporariamente na compilação
Pode ser usado como linguagem geral de script embora seja mais usado para compilação.

Então vamos para a apresentação do Makefile através da compilação de pequenos projetos em linguagem Assembly mostrando algumas das formas de se trabalhar com o make.

| Anterior | [Principal](/index) | [Próximo](/using-makefile-1) |
