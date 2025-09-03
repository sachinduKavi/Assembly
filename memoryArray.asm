.data 
    memo: .word 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0

.text
.globl main

main:
    la $s3, memo
    lw $t0, 28($s3)

    li $s2, 10
    add $t2, $t0, $s2

    sw $t2, 44($s3)

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall