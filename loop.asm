.data 
    newline: .asciiz "\n"

.text
.globl main

main:
    li $t0, 0

    loop:
        li $v0, 1
        move $a0, $t0
        syscall

        addi $t0, $t0, 1

        li $v0, 4
        la $a0, newline
        syscall

        bne $t0, 101, loop

    li $v0, 10  
    syscall
