# Write a program to check whether the number is prime or composite or neither.

.data

msg1: .asciiz "enter some integer: "
msg2: .asciiz "the number is prime"
msg3: .asciiz "the number is composite"
msg4: .asciiz "1 is neither prime nor composite"

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

li $t0, 1
li $t1, 2 #index variable
li $t2, 0  #factor count
addi $t3, $s0, 0 #initialize loop terminator
beq $s0, $t0, label
LOOP:
div $s0, $t1 #num/index
mfhi $s1
beq $s1, $0, increment_factor_count
j increment_index_variable
increment_factor_count: addi $t2, $t2, 1
increment_index_variable: addi $t1, $t1, 1
beq $t1, $t3, exit
j LOOP

exit:
beq $t2, $0, prime

composite:
li $v0, 4
la $a0, msg3
syscall
j end

label: li $v0, 4
la $a0, msg4
syscall
j main

prime:
li $v0, 4
la $a0, msg2
syscall

end:
jr $ra
.end main

