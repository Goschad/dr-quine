bits 64
; out
global main
extern printf

section .data
    msg db "bits 64%1$c; out%1$cglobal main%1$cextern printf%1$c%1$csection .data%1$c    msg db %2$c%3$s%2$c, 0%1$csection .text%1$c%1$cmain:%1$c    ; in%1$c    enter 0, 0%1$c    lea rdi, [rel msg]%1$c    call d_quote%1$c    mov rdx, 34%1$c    lea rcx, [rel msg]%1$c    call printf%1$c    leave%1$c    ret%1$c%1$cd_quote:%1$c    mov rsi, 10%1$c    ret%1$c", 0
section .text

main:
    ; in
    enter 0, 0
    lea rdi, [rel msg]
    call d_quote
    mov rdx, 34
    lea rcx, [rel msg]
    call printf
    leave
    ret

d_quote:
    mov rsi, 10
    ret
