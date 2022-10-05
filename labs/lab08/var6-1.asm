%include 'in_out.asm'
section .data
msg1 db 'Введите B: ',0h
msg2 db "Наибольшее число: ",0h
A dd '79'
B dd '83'
C dd '41'
section .bss
max resb 10
section .text
global _start
_start:
; ---------- Преобразование 'B' из символа в число
mov eax,B
call atoi 
mov [B],eax 
; ---------- Записываем 'A' в переменную 'max'
mov ecx,[A] 
mov [max],ecx 
; ---------- Сравниваем 'A' и 'С' (как символы)
cmp ecx,[C] 
jg check_B 
mov ecx,[C] 
mov [max],ecx
; ---------- Преобразование 'max(A,C)' из символа в число
check_B:
mov eax,max
call atoi 
mov [max],eax 
; ---------- Сравниваем 'max(A,C)' и 'B' (как числа)
mov ecx,[max]
cmp ecx,[B] 
jg fin 
mov ecx,[B]
mov [max],ecx
; ---------- Вывод результата
fin:
mov eax, msg2
call sprint 
mov eax,[max]
call iprintLF 
call quit
