.data
    message: .asciiz "\nHello World! 5 ...\n"  # Define the string with a newline character

.text
.globl main

main:
	li $t0, 25
	li $t1, 10
	add $t2, $t0, $t1

	li $v0, 1
	move $a0, $t2
	syscall


	li $t3, 1          # Initialize counter to 1
loop:
	beq $t3, 11, end_loop # If counter > 10, exit loop
	li $v0, 1          # System call code for print integer
	move $a0, $t3      # Move counter value to $a0
	syscall
	addi $t3, $t3, 1   # Increment counter
	j loop
end_loop:

    li $v0, 4          # System call code for print string
    la $a0, message    # Load address of message
    syscall

    li $v0, 10         # System call code for exit
    syscall