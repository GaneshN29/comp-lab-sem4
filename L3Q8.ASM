data segment
a db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0Ah
sum dw 0h
carry db 0h
ct dw 0010h
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ah,00h
mov dx,0000h
clc
mov si,offset a
mov cx,ct
back:
mov al,[si]
adc dx,ax
inc si
loop back
mov sum,dx
adc carry,0
mov ah,4ch
int 21h
code ends 
end start
