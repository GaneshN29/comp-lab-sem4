 data segment
 sum dw 0H
 carry dw 0H
 data ends
 code segment
 assume cs:code, ds:data
 start:
 mov ax,data
 mov ds,ax
 mov ax,1234H
 mov bx,2345H
 clc
 adc ax,bx
 mov sum,ax
 adc carry,0
 mov ah,4ch
 int 21H
 code ends
 end start

