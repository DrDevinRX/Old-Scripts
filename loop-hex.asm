# Devin Goldstein -- 9/12/16
# loop-hex.asm -- Creates a loop that prints the numbers 0 - 15 in hex
# Regs used:
# $s0: Used for loop test condition
# $s1: Used for loop var
.data
orig: .word 0
loop_cond: .word 15

.text
main:
# sets values for loop
#li $s0, 15 # loop test condition
#li $s1, 0 # loop var
la $s0, orig
la $s1, loop_cond


loop:
# moves value to be printed
move $a0, $s1
#prints current loop value
li $v0, 34
syscall

#adds a newline character to the end of the int
li $a0, '\n'
li $v0, 11
syscall

# adds 1 to the loop var
addi $s1, $s1, 1

# loop req: loops if $s1 is <= 15
ble $s1, $s0, loop

# exit function
exit:
li $v0, 10
syscall
# end loop-hex.asm
