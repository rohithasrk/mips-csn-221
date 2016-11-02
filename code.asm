# GroupID-08 (15116044_15116053) - Rohith A.S.R.K. and Shashwat Kumar
# Date : 2 November 2016
# code.asm - Assembly language program written in MIPS 32-bit ISA for simulating in QtSPIM. Written for counting the number of set bits in a number.
# Registers used:
# $t0 -	Stores the input number.
# $t2 -	To store the final count and while looping too.
# $t3 -	To store the value of <n&1> in each loop. Locally defined register.
# $v0 - To store function results, values from expression evaluation.
# $a0 - Arguments for subroutine. 

.data
	prompt: .asciiz "Enter a number: "
	message: .asciiz "\n The number of bits set are: "
.text
.globl main

main:
	# To print the prompt message
	li $v0, 4
	la, $a0, prompt
	syscall

	# To get the user input
	li $v0, 5
	syscall
	
	# To store the number in $t0
	move $t0, $v0
	
	# Declaring temp registers
	li $t1, 0 		# Stores 0
	li $t2, 0		# Stores count

# The while loop of c program
loop:				
	beq $t0, $t1, next      
	andi $t3, $t0, 1
	add $t2, $t2, $t3
	srl $t0, $t0, 1
	j loop
	
next:
	# Display the message
	li $v0, 4
	la $a0, message
	syscall
	
	# To print the number of set bits
	li $v0, 1
	move $a0, $t2
	syscall

# To end the program
end:
	li $v0, 10
	syscall
