---
layout: default
permalink: /syscalls
---

# Syscalls Linux i386

Esta tabela corresponde à ABI **Linux 32-bit (i386)**. Os números abaixo **não** são os mesmos da ABI `x86_64`.

Syscall Name | Syscall Value | Comentário
-----------  | ------------ | ----------
sys_exit | 1 | Encerra o processo atual e devolve um código de saída ao sistema.
sys_fork | 2 | Cria um novo processo copiando o processo atual.
sys_read | 3 | Lê bytes de um descritor de arquivo para um buffer em memória.
sys_write | 4 | Escreve bytes de um buffer para um descritor de arquivo.
sys_open | 5 | Abre um arquivo e retorna um descritor para uso posterior.
sys_waitpid | 7 | Espera um processo filho específico terminar ou mudar de estado.
sys_creat | 8 | Cria um arquivo de forma simplificada; hoje costuma ser substituída por `open`.
sys_link | 9 | Cria um hard link para um arquivo existente.
sys_unlink | 10 | Remove um nome de arquivo do sistema de arquivos.
sys_execve | 11 | Substitui a imagem do processo atual por outro programa.
sys_chdir | 12 | Muda o diretório de trabalho do processo.
sys_time | 13 | Obtém o tempo do sistema em segundos.
sys_mknod | 14 | Cria arquivo especial, como device node ou FIFO.
sys_chmod | 15 | Altera permissões de acesso de um arquivo.
sys_lchown | 16 | Altera dono e grupo de um link simbólico sem segui-lo.
sys_stat | 106 | Consulta metadados de um caminho, como tamanho e permissões.
sys_lseek | 19 | Move a posição de leitura ou escrita dentro de um arquivo.
sys_getpid | 20 | Retorna o PID do processo atual.
sys_mount | 21 | Monta um sistema de arquivos.
sys_umount | 22 | Desmonta um sistema de arquivos pelo ponto de montagem.
sys_setuid | 23 | Define o UID efetivo do processo.
sys_getuid | 24 | Retorna o UID real do processo.
sys_stime | 25 | Ajusta o relógio do sistema; chamada antiga e privilegiada.
sys_ptrace | 26 | Permite depuração e inspeção de outro processo.
sys_alarm | 27 | Agenda envio de `SIGALRM` após um intervalo em segundos.
sys_fstat | 108 | Consulta metadados usando um descritor de arquivo já aberto.
sys_pause | 29 | Suspende o processo até a chegada de um sinal.
sys_utime | 30 | Ajusta tempos de acesso e modificação de um arquivo.
sys_access | 33 | Verifica se o processo pode acessar um caminho com um modo específico.
sys_nice | 34 | Ajusta a prioridade de escalonamento do processo.
sys_sync | 36 | Força gravação em disco de buffers pendentes do kernel.
sys_kill | 37 | Envia um sinal para outro processo ou grupo de processos.
sys_rename | 38 | Renomeia ou move um arquivo dentro do sistema de arquivos.
sys_mkdir | 39 | Cria um diretório.
sys_rmdir | 40 | Remove um diretório vazio.
sys_dup | 41 | Duplica um descritor de arquivo existente.
sys_pipe | 42 | Cria um pipe unidirecional com dois descritores.
sys_times | 43 | Retorna tempos de CPU consumidos pelo processo e seus filhos.
sys_brk | 45 | Ajusta o final da área de dados do processo, usada pelo heap.
sys_setgid | 46 | Define o GID efetivo do processo.
sys_getgid | 47 | Retorna o GID real do processo.
sys_signal | 48 | Interface antiga para configurar tratamento de sinais.
sys_geteuid | 49 | Retorna o UID efetivo do processo.
sys_getegid | 50 | Retorna o GID efetivo do processo.
sys_acct | 51 | Ativa ou desativa accounting de processos no sistema.
sys_umount2 | 52 | Desmonta um sistema de arquivos com flags adicionais.
sys_ioctl | 54 | Executa operações de controle específicas de dispositivo ou terminal.

## Observações

- As syscalls mais recorrentes nos exemplos básicos de Assembly são `sys_exit`, `sys_read`, `sys_write`, `sys_open`, `sys_lseek`, `sys_close`, `sys_getpid` e `sys_execve`.
- Em código didático com `int 0x80`, normalmente o número da syscall vai em `EAX` e os argumentos seguem em `EBX`, `ECX`, `EDX`, `ESI`, `EDI` e `EBP`.
- Algumas entradas desta lista são interfaces antigas do kernel Linux i386, como `sys_creat`, `sys_signal` e `sys_stime`. Elas continuam úteis como referência histórica, mas nem sempre são a melhor interface para código novo.
