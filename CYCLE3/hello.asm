DATA SEGMENT
       MESSAGE DB 10,13,"Hello world !!!$"
       NAE DB 10,13,"SHARUN$"
DATA ENDS

CODE SEGMENT
      ASSUME CS:CODE,DS:DATA ;ASSUME segment register: segment-name:
      
START:
    MOV AX,DATA ;initialization of data segment register
    MOV DS,AX ;initialization of data segment register
    LEA DX,MESSAGE  ;LEA loads a pointer to the item you're addressing
    MOV AH,9H ;INT 21h / AH=9 - output of a string at DS:DX. String must be terminated by '$
    INT 21H
    LEA DX,NAE  ;LEA loads a pointer to the item you're addressing
    MOV AH,9H ;INT 21h / AH=9 - output of a string at DS:DX. String must be terminated by '$
    INT 21H
    MOV AH,4CH ;INT 21h / AH=4Ch - return control to the operating system (stop program). 
    INT 21H
END START

CODE ENDS