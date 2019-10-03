;Three days Grace

global _main
extern _printf
extern _fopen
extern _puts

section .text
_main:
push    rbx
lea     rdi, [rel format] 
; mov     rsi, "w"
; call    _fopen
; lea     rdi, [rel printfvalue]
; mov     rsi, rax
call    _printf
pop     rbx
ret

section .data
format:
db "Grace_kid", 0
printfvalue:
db "result is %d"
