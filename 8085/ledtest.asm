	ORG 2000H
	MVI A, 82H
	OUT 83H
	MVI A, 0FH
LOOP:	OUT 80H
	CMA
	NOP
	NOP
	NOP
	NOP
	NOP
	JMP LOOP
	END