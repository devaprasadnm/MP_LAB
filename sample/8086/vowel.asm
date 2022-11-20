;VOWELS AND CONSONENT
DATA SEGMENT 
    MSG1 DB 10,13,"ENTER THE STRING:$"
    MSG2 DB 10,13,"THE NUMBER OF VOWELS:$"
    MSG3 DB 10,13,"THE NUMBER OF CONSONANTS:$"
    STR DB 20 DUP('$')
DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE,DS:DATA
    START:MOV AX,DATA
          MOV DS,AX

          LEA DX,MSG1
          MOV AH,09h
          INT 21h

          MOV SI,00h
          MOV CL,00H
          MOV BL,00H
           
        L1:MOV AH,01h
           INT 21h

           MOV STR[SI],AL
           INC SI
           INC BL

           CMP AL,0dh
           JNE L1
        
        DEC BL

        MOV SI,00h
        L2:MOV AL,STR[SI]
           CMP AL,'a'
           JE L3
           CMP AL,'e'
           JE L3
           CMP AL,'i'
           JE L3
           CMP AL,'o'
           JE L3
           CMP AL,'u'
           JE L3

        L4: INC SI 
            CMP AL,0DH
            JE L5
            JMP L2

        L3: INC CL
            JMP L4


        

        L5: LEA DX,MSG2
            MOV AH,09h
            INT 21h
            SUB BL,CL
           ADD CL,30H
            MOV DL,CL
            MOV AH,02h
            INT 21h
        L6: LEA DX,MSG3
            MOV AH,09h
            INT 21h

           ADD BL,30H
            MOV DL,BL
            MOV AH,02h
            INT 21h
           MOV AH,4ch
           INT 21h

 CODE ENDS
 END START          