.data
num1: .word 4
num2: .word 3
num3: .word 9
num4: .word 5
num5: .word 2
num6: .word 1
numX: .word 0

.text
.globl main
main:
    lw $t1, num1
    lw $t2, num2
    lw $t3, num3
    lw $t4, num4
    lw $t5, num5
    lw $t6, num6
    lw $t0, numX
    
bgt $t1, $t2, change1
j compare2_3

change1:
move $t0, $t1
move $t1, $t2
move $t2, $t0

compare2_3:
bgt $t2, $t3, change2
j compare3_4

change2:
move $t0, $t2
move $t2, $t3
move $t3, $t0

compare3_4:
bgt $t3, $t4, change3
j compare4_5

change3:
move $t0, $t3
move $t3, $t4
move $t4, $t0

compare4_5:
bgt $t4, $t5, change4

change4:
move $t0, $t4
move $t4, $t5
move $t5, $t0



# prints
   
move $a0, $t1
li $v0, 1
syscall

move $a0, $t2
li $v0, 1
syscall

move $a0, $t3
li $v0, 1
syscall

move $a0, $t4
li $v0, 1
syscall

move $a0, $t5
li $v0, 1
syscall

move $a0, $t6
li $v0, 1
syscall

li $v0, 10
syscall

