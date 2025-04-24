#Wite program for alculating factorial using recursion technique


.data
msg1: .asciiz "enter the sum of digits of your roll number: "
msg2: .asciiz "factorial is: "


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


jal factorial

li $v0, 4
la $a0, msg2
syscall

li $v0, 1
move $a0, $v1
syscall

li $v0, 10
syscall
jr $ra
.end main

factorial:
beq $a1, $0, basecase
addi $sp, $sp, -8
sw $a1, 0($sp)
sw $ra, 4($sp)

addi $a1, $a1, -1
jal factorial
lw $a1, 0($sp)
lw $ra, 4($sp)
addi $sp, $sp, 8
mult $a1, $v1
mflo $v1
j end

basecase: addi $v1, $0, 1

end: jr $ra

