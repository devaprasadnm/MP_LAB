MVI C, 00h
LDA 4150h
MOV B, A
LDA 4151h
SUB B
JNC LOOP
CMA 
INR A 
INR C 
LOOP: STA 4152h
MOV A, C 
STA 4153h
HLT   