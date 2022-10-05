%include 'in_out.asm'
section .data
msg1 db 'Введите x: ',0h
msg2 db "Наибольшее число: ",0h
msg3 db 'Введите a: ',0h
A dd '20'
C dd '50'
section .bss
x resb 10
a resb 10
section .text

global _start
_start:

mov eax,msg1
call sprint
; ---------- Ввод 'x'
mov ecx,x
mov edx,10
call sread
; ---------- Преобразование 'x' из символа в число
mov eax,x
call atoi 
mov [x],eax 

mov eax,msg3
call sprint
; ---------- Ввод 'a'
mov ecx,a
mov edx,10
call sread
; ---------- Преобразование 'a' из символа в число
mov eax,a
call atoi 
mov [a],eax 

mov ecx,[x]
cmp ecx,[a] 
je ab 
mov eax,[x] 
mov ebx, 5
mul ebx		
call iprintLF
call quit 
; ---------- Вывод результата
ab:
mov eax, [x]
mov ebx, [a]
add eax, ebx
call iprintLF
call quit 
