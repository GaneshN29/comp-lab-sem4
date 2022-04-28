
data segment

no1 dd 55557662h

no2 dw 4443h

q dw ?

r dw ?

data ends

code segment

start : assume  cs :code,  ds :data

mov ax ,data

mov ds , ax

lea si , no1

mov ax, [ si ]

mov dx,[ si+2 ]

DIV no2

mov q , ax

mov r , dx

mov ah ,4ch

int 21h

code ends

end start