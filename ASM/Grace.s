bits 64
; out
%define glob global main
%define ext extern fopen, fprintf, fclose
glob
ext

section .data
    file db "Grace_kid.s", 0
    option db "w", 0
    msg db "bits 64%1$c; out%1$c%4$cdefine glob global main%1$c%4$cdefine ext extern fopen, fprintf, fclose%1$cglob%1$cext%1$c%1$csection .data%1$c    file db %2$cGrace_kid.s%2$c, 0%1$c    option db %2$cw%2$c, 0%1$c    msg db %2$c%3$s%2$c, 0%1$csection .text%1$c%1$c%4$cdefine FT(x)%1$c    main:%1$c        enter 0, 0%1$c        lea rdi, [rel file]%1$c        lea rsi, [rel option]%1$c        call fopen%1$c        mov rbx, rax%1$c        mov rdi, rbx%1$c        lea rsi, [rel msg]%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        lea r8, [rel msg]%1$c        mov r9, 37%1$c        call fprintf%1$c        mov rdi, rbx%1$c        call fclose%1$c        leave%1$c        ret%1$c%1$cFT(0)%1$c", 0
section .text

%define FT(x)
    main:
        enter 0, 0
        lea rdi, [rel file]
        lea rsi, [rel option]
        call fopen
        mov rbx, rax
        mov rdi, rbx
        lea rsi, [rel msg]
        mov rdx, 10
        mov rcx, 34
        lea r8, [rel msg]
        mov r9, 37
        call fprintf
        mov rdi, rbx
        call fclose
        leave
        ret

FT(0)
