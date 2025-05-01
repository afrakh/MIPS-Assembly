# Write a program to mutiply two integers, your roll number and your friend's roll number. 

.data
msg1: .asciiz "enter your roll number:"
msg2: .asciiz "enter your friend's roll number: "
msg3: .asciiz "the result of multiplication is:"

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

mult $s0, $s1
mflo $t0

li $v0, 4
la $a0, msg3
syscall

li $v0, 1
move $a0, $t0
syscall

jr $ra
.end main
