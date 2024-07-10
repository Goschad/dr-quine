bits 64

%define SYS_EXIT 60
%define SYS_ACCESS 21
%define F_OK 0

global main

extern fopen, fprintf, fclose, sprintf, system

section .data
    f_filename db "Sully_5.s", 0
    t_index db "%c", 0
    t_file db "Sully_%s.s", 0
    fopen_opt db "wr", 0
    msg db "bits 64%1$c%1$c%%define SYS_EXIT 60%1$c%%define SYS_ACCESS 21%1$c%%define F_OK 0%1$c%1$cglobal main%1$c%1$cextern fopen, fprintf, fclose, sprintf, system%1$c%1$csection .data%1$c    f_filename db %3$cSully_5.s%3$c, 0%1$c    t_index db %3$c%%c%3$c, 0%1$c    t_file db %3$cSully_%%s.s%3$c, 0%1$c    fopen_opt db %3$cwr%3$c, 0%1$c    msg db %3$c%4$s%3$c, 0%1$c    creat_obj db %3$cnasm -f elf64 Sully_%%s.s%3$c, 0%1$c    creat_exec db %3$cgcc -Wall -Wextra -Werror -no-pie -o Sully_%%s Sully_%%s.o%3$c, 0%1$c    exec db %3$c./Sully_%%s%3$c, 0%1$c%1$csection .bss%1$c    obj_buffer resb 24%1$c    exec_file_buffer resb 58%1$c    exec_buffer resb 10%1$c    buffer resb 12%1$c    index_buffer resb 12%1$c%1$csection .text%1$c%1$cmain:%1$c    .start:%1$c    enter 0, 0%1$c    mov rdx, '%2$s'%1$c    mov rax, rdx%1$c    .check_index_t:%1$c    cmp rax, 48%1$c    je ._quit%1$c    .verif_file:%1$c    mov rax, SYS_ACCESS%1$c    lea rdi, [rel f_filename]%1$c    lea rsi, F_OK%1$c    syscall%1$c    .check_index:%1$c    test rax, rax%1$c    jne .fill_index_buffer%1$c    dec rdx%1$c    .fill_index_buffer:%1$c    lea rdi, [rel index_buffer]%1$c    lea rsi, [rel t_index]%1$c    call sprintf%1$c    .fill_buffer:%1$c    lea rdi, [rel buffer]%1$c    lea rsi, [rel t_file]%1$c    lea rdx, [rel index_buffer]%1$c    call sprintf%1$c    .fopen_file:%1$c    lea rdi, [rel buffer]%1$c    lea rsi, [rel fopen_opt]%1$c    call fopen%1$c    .save_fd:%1$c    mov rbx, rax%1$c    .fill_file:%1$c    mov rdi, rax%1$c    lea rsi, [rel msg]%1$c    mov rdx, 10%1$c    lea rcx, [rel index_buffer]%1$c    mov r8, 34%1$c    lea r9, [rel msg]%1$c    call fprintf%1$c    .fclose_file:%1$c    xor rdi, rdi%1$c    mov rdi, rbx%1$c    call fclose%1$c    .make_obj_cmd:%1$c    lea rdi, [rel obj_buffer]%1$c    lea rsi, [rel creat_obj]%1$c    lea rdx, [rel index_buffer]%1$c    call sprintf%1$c    .make_exec_cmd:%1$c    lea rdi, [rel exec_file_buffer]%1$c    lea rsi, [rel creat_exec]%1$c    lea rdx, [rel index_buffer]%1$c    lea rcx, [rel index_buffer]%1$c    call sprintf%1$c    .run_exec_cmd:%1$c    lea rdi, [rel exec_buffer]%1$c    lea rsi, [rel exec]%1$c    lea rdx, [rel index_buffer]%1$c    call sprintf%1$c    .creat_obj:%1$c    lea rdi, [rel obj_buffer]%1$c    call system%1$c    .creat_exec:%1$c    lea rdi, [rel exec_file_buffer]%1$c    call system%1$c    .run:%1$c    lea rdi, [rel exec_buffer]%1$c    call system%1$c    ._quit:%1$c    leave%1$c    ret%1$c", 0
    creat_obj db "nasm -f elf64 Sully_%s.s", 0
    creat_exec db "gcc -Wall -Wextra -Werror -no-pie -o Sully_%s Sully_%s.o", 0
    exec db "./Sully_%s", 0

section .bss
    obj_buffer resb 24
    exec_file_buffer resb 58
    exec_buffer resb 10
    buffer resb 12
    index_buffer resb 12

section .text

main:
    .start:
    enter 0, 0
    mov rdx, '5'
    mov rax, rdx
    .check_index_t:
    cmp rax, 48
    je ._quit
    .verif_file:
    mov rax, SYS_ACCESS
    lea rdi, [rel f_filename]
    lea rsi, F_OK
    syscall
    .check_index:
    test rax, rax
    jne .fill_index_buffer
    dec rdx
    .fill_index_buffer:
    lea rdi, [rel index_buffer]
    lea rsi, [rel t_index]
    call sprintf
    .fill_buffer:
    lea rdi, [rel buffer]
    lea rsi, [rel t_file]
    lea rdx, [rel index_buffer]
    call sprintf
    .fopen_file:
    lea rdi, [rel buffer]
    lea rsi, [rel fopen_opt]
    call fopen
    .save_fd:
    mov rbx, rax
    .fill_file:
    mov rdi, rax
    lea rsi, [rel msg]
    mov rdx, 10
    lea rcx, [rel index_buffer]
    mov r8, 34
    lea r9, [rel msg]
    call fprintf
    .fclose_file:
    xor rdi, rdi
    mov rdi, rbx
    call fclose
    .make_obj_cmd:
    lea rdi, [rel obj_buffer]
    lea rsi, [rel creat_obj]
    lea rdx, [rel index_buffer]
    call sprintf
    .make_exec_cmd:
    lea rdi, [rel exec_file_buffer]
    lea rsi, [rel creat_exec]
    lea rdx, [rel index_buffer]
    lea rcx, [rel index_buffer]
    call sprintf
    .run_exec_cmd:
    lea rdi, [rel exec_buffer]
    lea rsi, [rel exec]
    lea rdx, [rel index_buffer]
    call sprintf
    .creat_obj:
    lea rdi, [rel obj_buffer]
    call system
    .creat_exec:
    lea rdi, [rel exec_file_buffer]
    call system
    .run:
    lea rdi, [rel exec_buffer]
    call system
    ._quit:
    leave
    ret
