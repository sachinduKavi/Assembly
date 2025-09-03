.data

.text
.globl main

main:
    li $t0, 15,
    li $t1, 10

    add $t2, $t0, $t1

    li $v0, 1
    move $a0, $t2
    syscall


    li $v0, 10
    syscall