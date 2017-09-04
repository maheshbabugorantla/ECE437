
# Setting the Base Address for the Program
org 0x0000

# Initializing the Stack Address to 0xFFFC
ori $29, $0, 0xFFFC # Bit-wise ORs the $0 and 0xFFFC and stores the results in the $29 (Stack Pointer)

# Result registers
ori $4, $0, 0x0000 # Initializing the result register
ori $12, $0, 0x0001 # Initializing the register to 1

# Initializing the registers that store the two operands
ori $2, $0, 0x0002 # Storing 20
push $2
ori $3, $0, 0x0004 # Storing 10
push $3
ori $3, $0, 0x0005 # Storing 5
push $3
ori $3, $0, 0x0003 # Storing 5
push $3

# Counter to count the no.of operands
ori $10, $0, 0x0004 # Storing 4

main:
	beq $10, $12, exit
	addiu $10, $10, -1

multiply_procedure:
	pop $2
	pop $3
	ori $4, $0, 0x0000 # Resetting the Counter

iterate:
		beq $3, $0, done # Jump to label 'done' once $2 (counter) is zero
		addu $4, $4, $2 # Add Unsigned word in $1 to $4 and store the result in $4
		addiu $3, $3, -1 # Subtract one from the Counter
		jal iterate # Jump to the label iterate

done:
		push $4
		jal main

exit:
	push $4
	halt
