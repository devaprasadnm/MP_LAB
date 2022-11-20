 LDA 4150H ;Get Hexa Data 
 MOV B,A 
 ANI 0FH ; Mask LOWER Nibble 
 CALL SUB1 ;Get ASCII code for LOWER nibble 
 STA 4151H 
 MOV A,B 
 RLC 
 RLC 
 RLC 
 RLC 
 ANI 0FH ;  Mask HIGHER Nibble 
 CALL SUB1 ;Get ASCII code for lower nibble 
 STA 4152H 
 HLT 
SUB1: CPI 0AH 
 JC SKIP 
 ADI 01 
SKIP: ADI 30
 RET