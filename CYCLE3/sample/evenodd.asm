DATA SEGMENT
  MSG1 DB 10,13,"ENTER THE NUMBER OF ELEMENTS IN AN ARRAY:$"
  LEN DB ?
  MSG3 DB 10,13,"ENTER THE NUMBER:$"
  ARR DB 20 DUP(?)
DATA ENDS
CODE SEGMENT
 ASSUME CS:CODE,DS:DATA
START:MOV AX,DATA
      MOV DS,AX
      
      LEA DX,MSG1
      MOV AH,09H
      INT 21H
      
      MOV AH,01H
      INT 21H
      AND AL,0FH
      MOV CL,AL
      MOV LEN,CL
      MOV CH,00H
      MOV SI,00H
      LOOP1:LEA DX,MSG3
            MOV AH,09H
            INT 21H
            MOV AH,01H
            INT 21H
            SUB AL,30H
            MOV ARR[SI],AL
            INC SI
            LOOP LOOP1


      MOV SI,00H
      MOV CL,LEN
      MOV CH,00H
      MOV BL,02H
      
      LOOP2:MOV AH,00H
            MOV AL,ARR[SI]
            DIV BL
            CMP AH,00H
            JE EVENNO
      JMP REPEAT
      EVENNO:MOV AL,ARR[SI]
           ADD AL,30H
           MOV DL,AL
           MOV AH,02H
           INT 21H
      REPEAT:INC SI
             LOOP LOOP2
      EXIT:MOV AH,4CH
      INT 21H
CODE ENDS
END START