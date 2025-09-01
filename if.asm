.data 

.text
.globl main

main:
    li $t0, 20

    beq $t0, 20, label_01
    
    label_02:

    li $v0, 10
    syscall


label_01:
    li $v0, 1
    move $a0, $t0
    syscall

    j label_02