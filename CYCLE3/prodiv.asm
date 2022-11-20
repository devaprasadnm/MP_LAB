DATA SEGMENT
    X DB ?
    Y DB ?
    PRODUCT DB ?
    DIVISION DB ?
    MSG1 DB 10,13,"ENTER THE FIRST NUMBER :$"
    MSG2 DB 10,13,"ENTER THE SECOND NUMBER :$"
    MSG3 DB 10,13,"PRODUCT IS: $"
    MSG4 DB 10,13,"DIVISION IS: $"

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START: 
    MOV AX,DATA
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21H
    SUB AL,30H
    MOV X,AL

    LEA DX,MSG2
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21H
    SUB AL,30H
    MOV Y,AL

    ; MULTIPLICATION

    MOV AL,X
    MUL Y
    MOV PRODUCT,AL
    MOV AH,0H
    AAM
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX

    ; DIVISION
   
    ; MOV AL,X
    ; DIV Y
    ; MOV DIVISION,AL
    ; MOV AH,0H
    ; AAD
    ; ADD AH,30H
    ; ADD AL,30H
    ; MOV CX,AX

    ;DISPLAY OUTPUT

    LEA DX,MSG3
    MOV AH,09H
    INT 21H
    MOV AH,02H
    MOV DL,BH
    INT 21H
    MOV AH,02H
    MOV DL,BL
    INT 21H

    ; LEA DX,MSG4
    ; MOV AH,09H
    ; INT 21H
    ; MOV AH,02H
    ; MOV DL,CH
    ; INT 21H
    ; MOV AH,02H
    ; MOV DL,CL
    ; INT 21H

    MOV AH,4CH
    INT 21H

CODE ENDS
END START