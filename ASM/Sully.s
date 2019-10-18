section .text
global _main
extern _sprintf
extern _printf
extern _dprintf
_main:
    push    rbx
    lea     rdi, [rel path]
    lea     rsi, [rel file_name]
    mov     rdx, 5
    dec     rdx
    ; push    rdx
    call    _sprintf
    lea     rdi, [rel path]
    ; mov     rsi, 0x202
    ; mov     rax, 0x2000005
    ; mov     rdx, 644o
    ; syscall
    call _printf
    lea     rdi, [rel file_name]
    ; pop     rdx
    mov     rsi, rdx
    call _printf
    pop     rbx
    ret

section .data
file_name:
db "Sully_%d.s", 0
file_content:   db "text" 
section .bss
cmd:    resb    255
path:   resb    15
output: resb    15
