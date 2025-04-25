# Write a program to calculate num^pow

.data
msg1: .asciiz "enter value of num(num is the sum of digits of your roll number): "
msg2: .asciiz "enter value of pow(the pow should be 0-9): "
msg3: .asciiz "result of num ^ pow is: "

.text
.globl main
.ent main

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $a1, $v0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
move $a2, $v0

jal computation_num_raised_to_pow

li $v0, 4
la $a0, msg3
syscall

li $v0, 1
move $a0, $v1
syscall

li $v0, 10
syscall
jr $ra

.end main
computation_num_raised_to_pow:
bne $a2, $0, continue_calculation
li $v1, 1
j end

continue_calculation: li $t0, 1  #result
li $t1, 0  #iterator
START:
mult $t0, $a1
mflo $t0
addi $t1, $t1, 1
bne $t1, $a2, START
move $v1, $t0

end: jr $ra


	
