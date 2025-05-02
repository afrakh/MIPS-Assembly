// Write a program to convert an uppercase alphabet to lowercae alphabet

.data

msg1: .asciiz "enter the uppercase alphabet:"
msg2: .asciiz "\nthe alphabet in lowercase is: "

.text
.globl main
.ent main

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 12
syscall
move $t1, $v0

addi $t1, $t1, 32

li $v0, 4
la $a0, msg2
syscall

li $v0, 11
move $a0, $t1
syscall

jr $ra
.end main