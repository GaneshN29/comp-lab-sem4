data segment

hex db ?

bcd  db 67h

data ends

code segment

start : assume  cs :code,  ds :data

mov ax , data

mov ds ,ax

mov bl , bcd
and bl,0FH
mov AL , bcd

and AL, F0H
mov cl,04h
rol al,cl
mov cl,0Ah
mul cl
add al,bl
mov hex,al
int3

code ends

end start