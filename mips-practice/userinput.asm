.data
	prompt: .asciiz "Enter your age:"
	message: .asciiz "\n Your age is"
.text
.globl main

main:
	# To print the prompt message
	li $v0, 4
	la $a0, prompt
	syscall
	
	# To get the user input
	li $v0, 5
	syscall
	
	# Store the age in $t0
	move $t0, $v0
	
	# Display the message
	li $v0, 4
	la $a0, message
	syscall

	# To print the age
	li $v0, 1
	move $a0, $t0
	syscall	

end:
	li $v0, 10
	syscall
