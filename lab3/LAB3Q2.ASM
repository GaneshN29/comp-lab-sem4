data segment
num1 db 25H
num2 db 25H
sum db 0H
carry db 0H
data ends
code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
CLC
ADC al,bl
DAA
mov sum,al
adc carry,0
mov ah,4ch
int 21H
code ends
end start
