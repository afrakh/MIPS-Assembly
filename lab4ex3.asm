# Write a program that converts temperature in celsius to fahrenheit

.data
cTemp: .word 39
fTemp: .word 0
res: .asciiz "The temperature in Fahrenheit is: "

.text
.globl main
.ent main

main:
la $s0, cTemp
lw $s1, 0($s0)

li $t0, 9
mult $s1, $t0
mflo $s2

addi $s2, $s2, 2

li $t1, 5
div $s2, $t1
mflo $s3
addi $s3, $s3, 32

li $v0, 4
la $a0, res
syscall

li $v0, 1
move $a0, $s3
syscall

sw $s3, 4($s0)
jr $ra
.end main
