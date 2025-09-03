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

    li $v0, 4
    la $a0, newline
    syscall

    addi $t0, $t0, 1
    
    slt $t5, $t0, 101
    beq $t5, 1, loop

    

    li $v0, 10
    syscall