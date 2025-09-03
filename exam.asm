.text
    mem: .word 0:10


.text
.globl main

main: 
    lw $t1, 28($zero)
    loop: 
        addi $t1, $t1, -2
        beq $t5, $zero, done
        addi $t0, $t0, 1
        j loop

    done:
        li $v0, 10
        syscall
