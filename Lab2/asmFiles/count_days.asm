 
# Calculate Days

# Setting the base address for the program
orig 0x0000

# Initializing the Stack Address to point to 0xFFFC
ori $sp, $0, 0xFFFC

# Registers to store the constants 2000, 365, 30
ori $2, $0, 0x07D0 # Year 2000
ori $3, $0, 0x016D # 365 Days in an year
ori $4, $0, 0x001E # 30 Days in a month

# Register that stores the current Day
ori


