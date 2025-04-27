# Write a program to check whether the temperature is hot, pleasant or cold.

.data
msg1: .asciiz "enter temp: "
msg2: .asciiz "it is hot today"
msg3: .asciiz "pleasant weather"
msg4: .asciiz "it is cold today"

.text
.globl main
.ent main
main:
    li $v0,4
    la $a0,msg1
    syscall

    li $v0,5
    syscall
    move $t1,$v0

    slti $t2,$t1,30
    bne $t2,$0,label1

    li $v0,4
    la $a0,msg2
    syscall
    j exit

label1:
    slti $t2,$t1,20
    bne $t2,$0,label2

    li $v0,4
    la $a0,msg3
    syscall
    j exit

label2:
    li $v0,4
    la $a0,msg4
    syscall

exit:
    jr $ra
.end main