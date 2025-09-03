.data


.text
.globl main

main:
    li $t0, 0

    loop:
    addi $t0, $t0, 1

    li $v0, 1
    move $a0, $t0
    syscall


    beq $t0, 100, done

    j loop


    done:
    li $v0, 10
    syscall