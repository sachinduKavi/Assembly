.data
    name: .asciiz "Hello World"

.text
.globl main

main: 
    li $v0, 4
    la $a0, name
    syscall

    li $v0, 10
    syscall