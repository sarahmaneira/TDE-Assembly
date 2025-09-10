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
    
    li $s0, 5
    
loop_externo:
    li $s1, 5
    move $t7, $t1
    li $s2, 1 
 
loop_interno:
    beq $s2, 1, cmp12
    beq $s2, 2, cmp23
    beq $s2, 3, cmp34
    beq $s2, 4, cmp45
    beq $s2, 5, cmp56

cmp12:
    bgt $t1, $t2, troca12
    j fimcmp
troca12:
    move $t0, $t1
    move $t1, $t2
    move $t2, $t0
    j fimcmp

cmp23:
    bgt $t2, $t3, troca23
    j fimcmp
troca23:
    move $t0, $t2
    move $t2, $t3
    move $t3, $t0
    j fimcmp

cmp34:
    bgt $t3, $t4, troca34
    j fimcmp
troca34:
    move $t0, $t3
    move $t3, $t4
    move $t4, $t0
    j fimcmp

cmp45:
    bgt $t4, $t5, troca45
    j fimcmp
troca45:
    move $t0, $t4
    move $t4, $t5
    move $t5, $t0
    j fimcmp

cmp56:
    bgt $t5, $t6, troca56
    j fimcmp
troca56:
    move $t0, $t5
    move $t5, $t6
    move $t6, $t0
    j fimcmp
    
    
fimcmp:
    addi $s2, $s2, 1
    addi $s1, $s1, -1
    bgtz $s1, loop_interno
    
    addi $s0, $s0, -1
    bgtz $s0, loop_externo
    
     move $a0, $t1
     
    li $v0, 1
    syscall
    li $a0, 32       
    li $v0, 11
    syscall

    move $a0, $t2
    li $v0, 1
    syscall
    li $a0, 32
    li $v0, 11
    syscall

    move $a0, $t3
    li $v0, 1
    syscall
    li $a0, 32
    li $v0, 11
    syscall

    move $a0, $t4
    li $v0, 1
    syscall
    li $a0, 32
    li $v0, 11
    syscall

    move $a0, $t5
    li $v0, 1
    syscall
    li $a0, 32
    li $v0, 11
    syscall

    move $a0, $t6
    li $v0, 1
    syscall

    li $v0, 10
    syscall