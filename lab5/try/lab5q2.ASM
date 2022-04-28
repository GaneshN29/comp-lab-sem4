data segment

hex db 20h

bcd  dw ?

data ends

code segment

start : assume  cs :code,  ds :data

mov ax , data

mov ds ,ax

mov al , hex
mov ah, 00h
mov cl, 64h
div cl
mov bh,al
mov al, ah
mov ah,00h
mov cl,0ah
div cl
mov cl,04h
rol al,cl
add al,ah
mov bl,al
mov bcd,bx

int3

code ends

end start