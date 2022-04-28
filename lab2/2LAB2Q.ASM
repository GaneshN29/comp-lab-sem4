data segment
num1 dw 1145H,0B123H,7956H,2310H,769AH
num2 dw 5 dup(?)
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax

LEA SI, NUM1
LEA DI, NUM2
MOV AX, [SI]
MOV [DI], AX

ADD SI,2
ADD DI,2
MOV AX, [SI]
MOV [DI], AX
ADD SI,2
ADD DI,2
MOV AX, [SI]
MOV [DI], AX
ADD SI,2
ADD DI,2
MOV AX, [SI]
MOV [DI], AX
ADD SI,2
ADD DI,2
MOV AX, [SI]
MOV [DI], AX
MOV AH,4CH
INT 21H
CODE ENDS
END START

