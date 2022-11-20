  LDA 2000h
  MOV B,A
  ANI 0Fh;finding lower nibble
  MOV C,A
  MOV A,B
  RLC;for reversing the acc value
  RLC
  RLC
  RLC
  ANI 0Fh ;masking
  ADD C
  STA 2001h
  HLT