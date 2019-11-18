.global _Z5multiii

_Z5multiii:

mov r2, #0

.tst:
tst r1, #1
beq .notprime

lsl r0, #1	@part if prime
lsr r1, #1
cmp r1, #0
bne .tst
bx lr

.notprime:
add r2, r0
lsl r0, #1
lsr r1, #1
cmp r1, #0
bne .tst
mov r0, r2
bx lr
