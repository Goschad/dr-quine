bits 64
; out
global main
extern fopen, fprintf, fclose

section .data
    file db "Grace_kid.s", 0
    option db "w", 0
    msg db "bits 64", 0
section .text

%macro FT 2
        main:
            enter 0, 0
            lea rdi, [rel file]
            lea rsi, [rel option]

            call fopen

            mov rdi, rax
            lea rsi, [rel file]
            call fprintf
            call fclose
            leave
            ret
%endmacro

FT, 0