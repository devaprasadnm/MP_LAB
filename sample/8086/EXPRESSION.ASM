DATA SEGMENT
    MSG1 DB 10,13,"ENTER THE VALUE OF A : $"
    MSG2 DB 10,13,"ENTER THE VALUE OF B : $"
    MSG3 DB 10,13,"ENTER THE VALUE OF C : $"
    MSG4 DB 10,13,"ENTER THE VALUE OF D : $"
    MSG5 DB 10,13,"RESULT : $"
    X DB ?
    Y DB ?
    Z DB ? 
    U DB ?
    RESULT DB ?

DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA 
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21h

    SUB AL,30H
    MOV X,AL

    LEA DX,MSG2
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21H
   SUB AL,30H
    MOV Y,AL

    ADD AL,X
    ADD AL,30H
    MOV RESULT,AL



LEA DX,MSG3
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21h

    SUB AL,30H
    MOV Z,AL

    LEA DX,MSG4
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21H
    SUB AL,30H
    MOV U,AL

    ADD AL,Z

    MUL RESULT
    ; MOV AH,00H
    ; AAM
    ; ADD AH,30H
    ; ADD AL,30H
    ; MOV BX,AX


    ; LEA DX,MSG5
    ; MOV AH,09H
    ; INT 21H

  
    ; MOV DH,AH
    ; MOV AH,02h
    ; INT 21H
   ; MOV AL,RESULT
     MOV DL,AL
    MOV AH,02h
    INT 21H

    MOV AH,4CH
    INT 21h

CODE ENDS
end START


    





