DATA SEGMENT
    X DB 05
    Y DB 03
    S DB ?
    D DB ?
    MSG1 DB 10,13,"SUM IS : $"
    MSG2 DB 10,13,"DIFF IS : $"
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA 
    START:
    MOV AX,DATA 
    MOV DS,AX

    MOV AL,X
    MOV BL,Y
    ADD AL,BL
    MOV S,AL
    MOV AH,0
    AAA
    ADD AH,30h
    ADD AL,30h
    MOV BX,AX

    MOV AL,X
    MOV CL,Y
    SUB AL,CL
    MOV D,AL
    MOV AH,0
    AAA
    ADD AH,30h
    ADD AL,30h
    MOV CX,AX

    LEA DX,MSG1
    MOV AH,09H
    INT 21h
    MOV AH,2H
    MOV DL,BH
    INT 21h
    MOV AH,02H
    MOV DL,BL
    INT 21h

    LEA DX,MSG2
    MOV AH,09H
    INT 21h
    MOV AH,02H
    MOV DL,CH
    INT 21h
    MOV AH,2H
    MOV DL,CL
    INT 21h

    MOV AH,4ch
    INT 21H

CODE ENDS
END START
