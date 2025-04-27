# Write a program to check whether the number is even or odd.

.data

msg1: .asciiz "enter your roll number:"
msg2: .asciiz "the number is even"
msg3: .asciiz "the number is odd"

.text
.globl main
.ent main

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $s0, $v0

li $s1, 2
div $s0, $s1
mfhi $s2
beq $s2, $0, else

li $v0, 4
la $a0, msg3
syscall

j exit

else: li $v0, 4
la $a0, msg2
syscall

exit: 
jr $ra
.end main


