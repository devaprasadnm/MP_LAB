
;AVG 8086
DATA SEGMENT
     N DB ?
     AVG DB ?
     SUM DB ?
     MSG1 DB 10,13,"ENTER THE TOTAL NUMBER$"
     MSG2 DB 10,13,"ENTER THE INPUT VALUES$"
     MSG3 DB 10,13,"THE AVERAGE IS $"
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21h

    SUB AL,30H

    MOV CL,AL
    MOV BL,AL

    MOV AL,00
    MOV SUM,AL

    L1:
    LEA DX,MSG2
    MOV AH,09H
    INT 21h

    MOV AH,01H
    INT 21h
    SUB AL,30H

    ADD AL,SUM
    MOV SUM,AL

    DEC CL
    JNZ L1

    LEA DX,MSG3
    MOV AH,09H
    INT 21h

    MOV AX,00
    MOV AL,SUM
    DIV BL
    ADD AX,3030H
    
    MOV DX,AX
    MOV AH,02H
    INT 21h



    MOV AH,4CH
    INT 21h

CODE ENDS
END START




