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

end:
	li $v0, 10
	syscall
