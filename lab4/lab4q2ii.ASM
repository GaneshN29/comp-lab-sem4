data segment

no1 dw 2221h

no2 db 31h

q db ?

r  db ?

data ends

code segment

start : assume  cs :code,  ds :data

mov ax ,data

mov ds , ax

mov ax , no1

IDIV  no2

mov  q , al

mov r , ah

mov ah ,4ch

int 21h

code ends

end start