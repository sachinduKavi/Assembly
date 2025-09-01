.data 

.text
.globl main

main:
    li $t0, 15
    sub $t2, $t0, 5
    
    li $v0, 1
    move $a0, $t2
    syscall


    li $v0, 10
    syscall
    