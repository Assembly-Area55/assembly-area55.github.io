; Arquivo de Syscalls para Linux (x86)

; Descritores de Arquivo
stdout  equ 1        ; Saída padrão

; Syscalls Comuns
sys_exit      equ 1   ; Termina o programa
sys_fork      equ 2   ; Cria um novo processo
sys_read      equ 3   ; Lê de um arquivo ou entrada padrão
sys_write     equ 4   ; Escreve para um arquivo ou saída padrão
sys_open      equ 5   ; Abre um arquivo
sys_close     equ 6   ; Fecha um arquivo
sys_waitpid   equ 7   ; Espera por um processo filho
sys_execve    equ 11  ; Executa um programa
sys_chdir     equ 12  ; Altera o diretório atual
sys_time      equ 13  ; Obtém a hora atual
sys_lseek     equ 19  ; Move o ponteiro de leitura/escrita de um arquivo
sys_getpid    equ 20  ; Obtém o PID do processo atual
sys_mount     equ 21  ; Monta um sistema de arquivos
sys_kill      equ 37  ; Envia um sinal para um processo
sys_mkdir     equ 39  ; Cria um novo diretório
sys_rmdir     equ 40  ; Remove um diretório
sys_dup       equ 41  ; Duplica um descritor de arquivo
sys_pipe      equ 42  ; Cria um pipe
sys_brk       equ 45  ; Ajusta o segmento de dados

; Syscalls de Identidade
sys_setuid    equ 23  ; Define o UID
sys_getuid    equ 24  ; Obtém o UID
sys_geteuid   equ 49  ; Obtém o UID efetivo
sys_getgid    equ 47  ; Obtém o GID
sys_getegid   equ 50  ; Obtém o GID efetivo
