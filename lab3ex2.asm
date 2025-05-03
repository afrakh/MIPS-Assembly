// Write a program to get 2's complement of a number.

.data
msg1: .asciiz "enter the number:"
msg2: .asciiz "the 2's complement of the number is :"

.text
.globl main
.ent main

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $t1, $v0

nor $t1, $t1, $t1
addi $t1, $t1, 1

li $v0, 4
la $a0, msg2
syscall

li $v0, 1
move $a0, $t1
syscall

jr $ra
.end main