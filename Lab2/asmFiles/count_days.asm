
# Calculate Days

# Setting the base address for the program
org 0x0000

# Initializing the Stack Address to point to 0xFFFC
ori $sp, $0, 0xFFFC

# Intermediate Registers
ori $2, $0, 0x0000
ori $2, $0, 0x0000

# Registers to store the constants 2000, 365, 30
ori $10, $0, 0x07D0 # Year 2000
ori $11, $0, 0x016D # 365 Days in an year
ori $12, $0, 0x001E # 30 Days in a month
ori $13, $0, 0x0001 # January

# Register that stores the current Day
ori $14, $0, 0x001D # 29th day of the month

# Current Year
ori $15, $0, 0x07E1 # 2017

# Current Month
ori $16, $0, 0x0008 # August

# (Current Month - 1)
subu $16, $16, $13

push $16
push $12

# (Current Year - 2000)
subu $15, $15, $10

push $15
push $11

# Result registers
ori $4, $0, 0x0000 # Initializing the intermediate result register
ori $5, $0, 0x0000 # Initializing the Final result register
ori $20, $0, 0x0001 # Initializing the register to 1

# Counter to count the no.of operands
ori $10, $0, 0x0005 # Storing 5

main:
	addu $5, $5, $4
	beq $10, $20, exit
	addiu $10, $10, -2

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
		jal main

exit:
	addu $5, $5, $14
	push $5
	halt
