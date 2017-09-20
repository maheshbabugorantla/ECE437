	ORG 0x0000
	ORI $29, $0, 0xFFFC
	ORI $28, $0, 0xFFF8
	#Operands
	ORI $2, $0, 8 #current month
	ORI $1, $0, 1
	SUB $2, $2, $1
	PUSH $2
	ORI $3, $0, 30
	PUSH $3

	JAL l_begin

	POP $20 #Middle Term

	ORI $2, $0, 2017 #current year
	ORI $1, $0, 2000
	SUB $2, $2, $1
	PUSH $2
	ORI $3, $0, 365
	PUSH $3	

	JAL l_begin

	POP $21 #Last Term

	ADD $22, $20, $21 #Middle + Last
	
	ADDI $23, $22, 20 #current day

	#final amount of days stored in Reg23
	
	HALT

l_begin:
	BEQ $28, $29, l_exit
	ORI $10, $0, 0 #Result
	ORI $7, $0, 0 #Increment counter
	POP $9
	POP $8
	
l_multiply:
	BNE $8, $7, l_add
	j l_return

l_add:
	ADDI $7, $7, 1
	ADD $10, $10, $9
	j l_multiply
	
l_return:
	PUSH $10
	J l_begin
l_exit:
	JR $31
