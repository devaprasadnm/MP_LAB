;FIND A CHARECTER FROM A STRING
DATA SEGMENT
    STRING DB 20 DUP("$")
    KEY DB 20 DUP("$")
    MSG1 DB 10,13,"ENTER THE STRING :$"
    MSG2 DB 10,13,"ENTER THE KEY :$"
    MSG3 DB 10,13,"ALPHABET FOUND $"
    MSG4 DB 10,13,"ALPHABET IS NOT FOUND $"
DATA ENDS 

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA

    START: MOV AX,DATA 
           MOV DS,AX
           
           LEA DX,MSG1
           MOV AH,09h
           INT 21h
           MOV SI,00H

    L1:    MOV AH,01H
           INT 21h
           MOV STRING[SI],AL
           INC SI
           CMP AL,0DH
           JNE L1
           MOV SI,00H

           LEA DX,MSG2
           MOV AH,09h
           INT 21h

           MOV AH,01H
           INT 21h
           MOV KEY[SI],AL
           MOV SI,00H

    L2:    CMP AL,STRING[SI]
               JE YES
               MOV BL,STRING[SI]
               CMP BL,0DH
               JE NO
               INC SI
               JMP L2

                  

    NO:  LEA DX,MSG4
         MOV AH,09h
         INT 21h
         MOV AH,4CH
         INT 21h

    YES:  LEA DX,MSG3
         MOV AH,09h
         INT 21h

         MOV AH,4CH
         INT 21h


CODE ENDS
END START