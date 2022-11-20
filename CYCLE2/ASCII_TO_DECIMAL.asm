start:	IN 00h
	SUI 030h
	CPI 0ah
	JC store
	SUI 07h
store:	OUT 05h
	HLT