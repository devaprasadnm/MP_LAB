LXI H,4150h ; Initialize memory pointer 
MVI D,00h ; Clear D- reg for Most significant Byte 
XRA A ; Clear Accumulator 
MOV C,M ; Get HEX data 
LOOP2: ADI 01h ; Count the number one by one 
DAA ; Adjust for BCD count 
JNC LOOP1 
INR D 
LOOP1: DCR C 
JNZ LOOP2 
STA 4151h ; Store the Least Significant Byte 
MOV A,D 
STA 4152h ; Store the Most Significant Byte 
HLT