DATA SEGMENT 
    INPUT DB ?
    RESULT DB ?
    MSG1 DB 10,13,"ENTER THE VALUE: $"
    MSG2 DB 10,13,"FACTORIAL IS : $"

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA 
    START:
    MOV AX,DATA 
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,09H
    INT 21h
    MOV AH,01h
    INT 21h
    SUB AL,30H
    MOV CL,AL
    MOV AX,1H

L1 :MUL CL
    MOV BL,CL
    DEC CL
    JNZ L1

L2 :
    MOV AH,0
    AAM
    ADD AL,30H
    ADD AH,30H
    MOV BX,AX
    LEA DX,MSG2
    MOV AH,09H
    INT 21h
    MOV AH,02H
    MOV DL,BH
    INT 21H
    MOV AH,02H
    MOV DL,BL
    INT 21H

L3 :MOV AH,4CH
    INT 21H
CODE ENDS
END START




