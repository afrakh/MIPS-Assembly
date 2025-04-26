# Write a program to print sum of n integers where n is the input from user.

.data
msg0: .asciiz "this program prints the sum till n integers"
msg1: .asciiz "\nenter your roll number (n): "
msg2: .asciiz "\nthe sum till your roll number n (1 + 2 + 3+ ...... + n) is:  "
.text
.globl main
.ent main
main:
    li $v0, 4
    la $a0, msg0
    syscall
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    addi $t2, $0, 1    # counter
    add $t3, $0, $0    # sum
loop:
    slt $t4, $t2, $t1
    beq $t4, $0, label
    add $t3, $t3, $t2
    addi $t2, $t2, 1
    j loop
label:
    add $t3, $t3, $t1
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
exit:
    jr $ra
   .end main