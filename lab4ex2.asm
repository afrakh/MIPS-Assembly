# Write a program to perofrm division of two integers and show quotient and remainder in output 

.data
msg1: .asciiz "enter your roll number:"
msg2: .asciiz "enter Divisor: "
msg3: .asciiz "Quotient is: "
msg4: .asciiz " and Remainder is:"
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
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $s1, $v0
div $s0, $s1
mflo $s2
mfhi $s3
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
move $a0, $s2
syscall
li $v0, 4
la $a0, msg4
syscall
li $v0, 1
move $a0, $s3
syscall
jr $ra
.end main
