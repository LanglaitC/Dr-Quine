section .text
global _main
extern _sprintf
extern _dprintf
_main:
    push    rbx
    mov     rdi, file_num
    cmp     rdi, 0
    je      exit
create_path:
    lea     rdi, [rel path]
    lea     rsi, [rel file_name]
    mov     rdx, file_num
    call    _sprintf
create_output:
    lea     rdi, [rel output]
    lea     rsi, [rel output_name]
    mov     rdx, file_num
    call    _sprintf
create_command:
    lea     rdi, [rel final_cmd]
    lea     rsi, [rel command]
    lea     rdx, [rel output]
    lea     rcx, [rel path]
    call    _sprintf
create_file:
    lea rdi, [rel path]
    mov rsi, 0x202
    mov rax, 0x2000005
    mov rdx, 644o
    syscall
    mov     rdi, rax
    lea     rsi, [rel file_content]
    mov     rdx, 10
    mov     rcx, 34
    lea     r8, [rel file_content]
    lea     r10, [rel file_name]
    push    r10
    lea     r10, [rel output_name]
    push    r10
    lea     r10, [rel command]
    push    r10
    mov     r9, file_num
    dec     r9
    sub     rsp, 8
    call    _dprintf
    add     rsp, 8
    pop     r10
    pop     r10
    pop     r10
exit:
    pop     rbx
    ret

section .data
file_name:
db "Sully_%d.s", 0
output_name:
db "Sully_%d", 0
command:
db "gcc -o %1$s %2$s && ./%1$s", 0
file_content:
db "section .text%1$cglobal _main%1$cextern _sprintf%1$cextern _dprintf%1$c_main:%1$c    push    rbx%1$c    mov     rdi, file_num%1$c    cmp     rdi, 0%1$c    je      exit%1$ccreate_path:%1$c    lea     rdi, [rel path]%1$c    lea     rsi, [rel file_name]%1$c    mov     rdx, file_num%1$c    call    _sprintf%1$ccreate_output:%1$c    lea     rdi, [rel output]%1$c    lea     rsi, [rel output_name]%1$c    mov     rdx, file_num%1$c    call    _sprintf%1$ccreate_file:%1$c    lea rdi, [rel path]%1$c    mov rsi, 0x202%1$c    mov rax, 0x2000005%1$c    mov rdx, 644o%1$c    syscall%1$c    mov     rdi, rax%1$c    lea     rsi, [rel file_content]%1$c    mov     rdx, 10%1$c    mov     rcx, 34%1$c    lea     r8, [rel file_content]%1$c    mov     r9, file_num%1$c    dec     r9%1$c    call    _dprintf%1$cexit:%1$c    pop     rbx%1$c    ret%1$c%1$csection .data%1$cfile_name:%1$cdb %2$c%4$d%2$c", 0
section .bss
file_num:   equ     5
final_cmd:  resb    255
path:       resb    15
output:     resb    15
