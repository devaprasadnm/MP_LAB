DATA SEGMENT
    MSG0 DB 10,13,"ENTER THE NUMBER OF ELEMENTS:$"
    MSG1 DB 10,13,"Enter the numbers:$"
    MSG2 DB 10,13,"Even Numbers are:$"
    MSG3 DB 10,13,"Odd Numbers are:$"
    X DB 50 DUP("$")
    N DB ?
DATA ENDS

CODE SEGMENT 
    ASSUME CS:CODE,DS:DATA

    START:MOV AX,DATA
          MOV DS,AX
          
        ;   LEA DX,MSG0
        ;   MOV AH,09h
        ;   INT 21H
        ;   MOV AH,01H
        ;   INT 21H

        ;   MOV N,AL
        ;   MOV CL,N
        ;   AND CL,0FH


          LEA DX,MSG1
          MOV AH,09h
          INT 21h
          
          MOV SI,00H
          L2:MOV AH,01H
            INT 21h
            SUB AL,30H
            MOV X[SI],AL
            INC SI
            CMP AL,0DH

             JNE L2
             MOV SI,00H
            MOV AL,X[SI]
            

             MOV BL,02H
             DIV BL

             MOV DL,AL
             MOV AH,02H
             INT 21H


        ;     LEA DX,MSG2
        ;     MOV AH,09h
        ;     INT 21h

        ;    MOV SI,00H
        ;    MOV BH,00H
        ;    MOV CL,02H
        ;    L3:MOV AL,X[SI]

        ;    DIV CL
        ;    SUB AH,BH
        ;    JZ L4

        ;    L4:MOV DL,X[SI]
        ;       ADD DL,30H
        ;       MOV AH,02H
        ;       INT 21h

        ;       INC SI
        ;       CMP AL,0DH
        ;       JNE L3

               MOV AH,4CH
               INT 21H

CODE ENDS
END START


