.data
    memo: .word 0:10
.text
.globl main

main:
    li $t0, 45
    la $s0, memo
    sw $t0, 28($s0)


    lw $t1, 28($s0)

    li $v0, 1
    move $a0, $t1
    syscall 


    li $v0, 10
    syscall
