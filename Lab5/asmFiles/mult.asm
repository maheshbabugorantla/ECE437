
# Multiplication Algorithm

# Setting the Base Address for the program
org 0x0000

# Initializing the Stack Address to 0xFFFC
ori $29, $0, 0xFFFC # Bit-wise ORs the $0 and 0xFFFC and stores the results in the $29 (Stack Pointer)

# Initializing the registers that store the two operands
ori $2, $0, 0x0005 # Storing 20
#sll $2, $2, 0x0002 # Multiplying the value by 4 (20 * 4) = 80
ori $3, $0, 0x0002 # Storing 10
#srl $3, $3, 0x0002 # Dividing the value by 4 (10 / 4) = 2

# Initializing the registers that store the result
ori $4, $0, 0x0000 # Register to store the Result 

# Pushing the two operands onto the stack, here I am pushing the $3 twice onto the stack is because I can restore the value $3 back
# push $3
# push $2
# push $3

multiplication:
		# Get the registers that contain the operands
		# pop $3
		# pop $2

iterate:
		beq $3, $0, done # Jump to label 'done' once $2 (counter) is zero
		addu $4, $4, $2 # Add Unsigned word in $1 to $4 and store the result in $4
		addiu $3, $3, -1 # Subtract one from the Counter
		j iterate # Jump to the label iterate
done:
		# pop $3 # Restoring the Value of $3 back
		sw $4, 80($8) # Result should be 80 * 2 = 160 (A0 in $4)
		halt
