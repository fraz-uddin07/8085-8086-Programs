	ORG 2000H
LOOP:	LXI H, 2500H
	MOV A, M
	OUT 80H
	INX H
	MOV A, M
	OUT 81H
	INX H
	MOV A, M
	OUT 82H
	MVI C, 0FH;
L1:	DCR C;
	JNZ L1
	JMP LOOP
	LXI H, 2500H
	MOV A, M
	CMA
	OUT 80H
	INX H
	MOV A, M
	CMA
	OUT 81H
	INX H
	MOV A, M
	CMA
	OUT 82H
	MVI C, 0FH;
L2:	DCR C;
	JNZ L2
	JMP LOOP
	HLT


	ORG 2500H
	DB 39H, 6DH, 79H
	END