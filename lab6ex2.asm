# Write a program to print factorial of the sum of digits of your roll number

.data
msg1: .asciiz "this program prints factorial of the sum of digits of your roll number!"
msg2: .asciiz "\nenter the sum of digits of your roll number: "
msg3: .asciiz "factorial is: "

.text
.globl main
.ent main

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
move $s0, $v0

addi $t0, $s0, 0
addi $t1, $0, 1

START:
beq $t0, $0, exit
mult $t1, $t0
mflo $t1
addi $t0, $t0, -1
j START

exit:
li $v0, 4
la $a0, msg3
syscall

li $v0, 1
move $a0, $t1
syscall

jr $ra
.end main

