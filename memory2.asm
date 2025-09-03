.data
    memo: .word 0:10

.text
.globl main

main: 
    li $t0, 10
    sw $t0, 28($zero)


    lw $t1, 28($zero)

    li $v0, 1
    move $a0, $t1
    syscall 


    li $v0, 10
    syscall