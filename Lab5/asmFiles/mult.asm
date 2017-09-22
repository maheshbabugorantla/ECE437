	ORG 0x0000
	ORI $29, $0, 0xFFFC

	ORI $8, $0, 0x0005
	ORI $9, $0, 0x0020
	PUSH $8
	PUSH $9
	JAL l_begin
	POP $2 #Final Data
	HALT

l_begin:

	ORI $10, $0, 0 #Result
	ORI $7, $0, 0 #Increment counter
	POP $9
	POP $8
	
l_multiply:
	BNE $9, $7, l_add
	j l_return

l_add:
	ADDI $7, $7, 1
	ADD $10, $10, $8
	j l_multiply
	
l_return:
	PUSH $10
	JR $31
