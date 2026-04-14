addi x1, x0, 1
addi x2, x0, 2
addi x3, x0, 3
addi x4, x0, 4
beq x1, x2, 28
addi x5, x0, 5
beq x2, x3, 20
addi x6, x0, 6
beq x3, x4, 12
ld x7, 16(x0)
beq x3, x7, 28
addi x1, x0, -1
addi x2, x0, -1
addi x3, x0, -1
addi x4, x0, -1
addi x5, x0, -1
addi x6, x0, -1
halt
