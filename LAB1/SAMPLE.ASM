CODE SEGMENT
     ASSUME CS: CODE;
START:   MOV AX, 05H;
         MOV AX,4CH;
         INT 21H;
         CODE ENDS
         END START
