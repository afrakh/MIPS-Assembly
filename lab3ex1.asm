// Write a program to calculate an expression by taking user inputs for variables.

.data
msg1 : .asciiz "Enter the value for x:"
msg2: .asciiz "Enter the value for y:"
msg3: .asciiz "Enter the value for z:"
msg4: .asciiz "The result of x - y + z - 8 is: "

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

li $v0, 4
la $a0, msg3
syscall

li $v0, 5
syscall
move $s2, $v0

sub $t0, $s0, $s1
add $t1, $t0, $s2
addi $s3, $t1, -8

li $v0, 4
la $a0, msg4
syscall

li $v0, 1
move $a0, $s3
syscall

jr $ra
.end main



