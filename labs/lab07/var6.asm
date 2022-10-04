%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0
rem: DB 'Ответ: ',0
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`

mov ebx, eax		;x^3/2 + 1
mul ebx		
mul ebx
mov ecx, 2
div ecx
inc eax

mov [res], eax
mov eax, rem

call sprint
mov eax, [res]
call iprintLF
call quit
