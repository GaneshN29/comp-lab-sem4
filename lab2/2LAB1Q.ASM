data segment
num1 db 10H,20H,30H,40H,50H,45H,23H,46H,78H,60H
num2 db 5 dup(?)
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax

lea si, num1
add si, 9

lea di, num2
add di, 4

mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di

mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al
dec si
dec di
mov al,[si]
mov [di],al


mov ah,4ch
int 21h
code ends
end start





