addi x2, x0, 160
addi x3, x0, 175
ld x1, 0(x0)
addi x1, x1, 5
beq x1, x3, 24
beq x1, x1, 8
beq x1, x3, 16
beq x1, x1, 8
beq x1, x1, 24
beq x1, x1, -4
beq x1, x3, 40
beq x1, x1, 24
ld x1, 8(x0)
addi x1, x1, 5
beq x0, x1, 20
beq x0, x1, 16
beq x1, x1, 12
ld x1, 8(x0)
beq x1, x3, 8
beq x1, x2, 8
beq x1, x1, -36
addi	x11, x0, 171
addi	x12, x0, 3
addi	x10, x0, 5
beq	x0, x10, 36
ld	x5, 0(x0)
addi	x5, x5, 1
ld	x6, 8(x0)
addi	x10, x10, -1
addi	x6, x6, 1
ld	x7, 16(x0)
addi	x8, x7, 1
beq	x7, x12, -32
beq	x11, x5, 16
addi	x5, x5, 1
addi	x6, x6, 1
addi	x7, x7, 1
addi	x5, x5, 2
addi	x5, x5, 2
addi	x5, x5, 2
addi	x6, x6, 2
beq	x11, x5, 8
halt
