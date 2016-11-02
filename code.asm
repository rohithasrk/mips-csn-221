.data
	prompt: .ascizz "Enter a number: "
	message: .ascizz "The number of bits set are: "
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
	
	//Code

	# Display the message
	li $v0, 4
	la $a0, message
	syscall
	
	# To print the number of set bits
	li $v0, 1
	move $a0, $t0
	syscall

end:
	li $v0, 10
	syscall
