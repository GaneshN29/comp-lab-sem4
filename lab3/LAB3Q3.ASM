data segment
num1 dd 12345678H
num2 dd 87654321H
sum dd 0H
carry db 0H
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov dx,ax
mov ax,num1
add ax,num2
mov sum,ax
mov ax,num1+2
adc ax,num2+2
mov sum+2,ax
JNC nxt
mov sum+4,01H
MOV AH,4CH
INT 21H
CODE ENDS
END START
