.data
    newline: .asciiz "\n"

.text
.globl main

main: 
    li $t0, 20
    li $t1, 3
    div $t0, $t1
    mflo $t2
    mfhi $t3


    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall