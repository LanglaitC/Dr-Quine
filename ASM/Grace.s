;Three days Grace
; #define PRINTF_STR test
; #define DECLARE_MAIN global_main
; #define MAIN_INJECTION _main:
global _main
extern _dprintf
extern _printf
extern _open
extern _close
section .text

_main:
push    rbx
lea     rdi, [rel format]
mov     rsi, 0x202          ;O_CREAT | O_RDWR
mov     rax, 0x2000005      ;open
mov     rdx, 644o
syscall
lea     rsi, [rel testStr]
mov     rdi, rax
call    _dprintf
pop     rbx
ret

section .data
format:
db "Grace_kid.s", 0
printfvalue:
db "teste"
testStr:
db "fd is %d"