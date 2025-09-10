.data
year1: .word 2006
year2: .word 2005
year3: .word 2003

.text
.globl main
main:
 lw $t1, year1
 lw $t2, year2
 lw $t3, year3
 
 add $t0, $t1, $t2
 add $t0, $t0, $t3
 
 move $a0, $t0
 li $v0, 1
 syscall
 