
data segment

no1 db 1222h

no2 db 1322h
ans db ?

data ends

code segment

start : assume cs :code, ds :data

mov ax ,data

mov ds , ax

mov ax , no1

mov bx ,no2

imul bx

mov ans ,ax

mov ah ,4ch

int 21h

code ends

end start