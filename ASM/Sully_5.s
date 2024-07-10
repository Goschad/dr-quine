%4$s bits 64%1$c%1$c%%define SYS_EXIT 60%1$c%%define SYS_ACCESS 21%1$c%%define F_OK 0%1$c%1$cglobal main%1$c%1$cextern fopen, fprintf, fclose, sprintf, system, printf bits 64

%define SYS_EXIT 60
%define SYS_ACCESS 21
%define F_OK 0

global main

extern fopen, fprintf, fclose, sprintf, system, printf