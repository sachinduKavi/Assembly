.data
    reserved: .word 0, 0, 0
    name: .asciiz "Sachindu"

.text
.globl main

main:
    la $s1, reserved

    li $t0, 10
    li $t2, 25

    sw $t0, 0($s1)
    sw $t2, 4($s1)

    lw $t3, 0($s1)

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall