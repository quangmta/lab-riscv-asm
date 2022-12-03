.data
N:
.word 4
M:
.word 4
C:
.word 2
matrix:
.word 1, 5, 1, 2
.word 2, 6, 3, 3
.word 1, 7, 5, 6
.word 4, 8, 4, 5
result:
.word 0

.text

main:
la a2, N
la a3, M
la a6, C
la a4, matrix
la a5, result
call process
la a3, result
call print
call exit

print:
addi a0, x0, 1 # print_int ecall
lw a1, 0(a3)
ecall
ret

exit:
addi a0, x0, 10
ecall

process:
lw t1, 0(a2) # N
lw t2, 0(a3) # M
lw t0, 0(a6) # K

slli t0,t0,2
slli t1,t1,2

add a4,a4,t0 # increment array pointer
addi t5, x0, 0 # result to save
addi t3, x0, 0 # row number

cycle:
lw t6, 0(a4) # load value from array
add t5, t5, t6 # count sum
add a4, a4, t1 # increment array pointer
addi t3, t3, 1
blt t3, t2, cycle

sw t5, 0(a5) # save result to result
ret
