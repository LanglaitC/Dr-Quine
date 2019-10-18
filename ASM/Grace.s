;Three days Grace
%define PRINTF_STR ";Three days Grace%1$c%%define PRINTF_STR %2$c%3$s%2$c%1$c%%define DECLARE_MAIN global _main%1$c%%define MAIN_INJECTION _main:%1$csection .text%1$cextern _dprintf%1$cextern _printf%1$cextern _open%1$cDECLARE_MAIN%1$cMAIN_INJECTION%1$cpush    rbx%1$clea     rdi, [rel file_name]%1$cmov     rsi, 0x202%1$cmov     rax, 0x2000005%1$cmov     rdx, 644o%1$csyscall%1$clea     rsi, [rel file_content]%1$cmov     rdi, rax%1$cmov     rdx, 10%1$cmov     rcx, 34%1$clea     r8, [rel file_content]%1$ccall    _dprintf%1$cpop     rbx%1$cret%1$c%1$csection .data%1$cfile_name:%1$cdb %2$cGrace_kid.s%2$c, 0%1$cfile_content:%1$cdb PRINTF_STR, 0"
%define DECLARE_MAIN global _main
%define MAIN_INJECTION _main:
section .text
extern _dprintf
extern _printf
extern _open
DECLARE_MAIN
MAIN_INJECTION
push    rbx
lea     rdi, [rel file_name]
mov     rsi, 0x202
mov     rax, 0x2000005
mov     rdx, 644o
syscall
lea     rsi, [rel file_content]
mov     rdi, rax
mov     rdx, 10
mov     rcx, 34
lea     r8, [rel file_content]
call    _dprintf
pop     rbx
ret

section .data
file_name:
db "Grace_kid.s", 0
file_content:
db PRINTF_STR, 0