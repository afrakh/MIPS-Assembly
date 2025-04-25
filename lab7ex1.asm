# Write a program to calculate the average of your roll number, your friend's roll number and 3.

.data

msg1: .asciiz "enter your roll number: "
msg2: .asciiz "enter your friend's roll number: "
msg3: .asciiz "the average of your, your friend's roll number and 3 is: "

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

li $t1, 3
move $a3, $t1

jal Average

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

Average:
add $t0, $a1, $a2
add $t0, $t0, $a3

slti $t2, $t0, 0
bne $t2, $t0, add_negative_one
addi $t0, $t0, 1
j end

add_negative_one: addi $t0, $t0, -1

end:
addi $t3, $0, 3
div $t0, $t3
mflo $v1
jr $ra