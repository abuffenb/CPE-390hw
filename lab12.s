.global _Z5multiii

_Z5multiii:

mov r2, #0

.tst:
tst r1, #1
bne .noteven

lsl r0, #1	@part if even
lsr r1, #1
cmp r1, #0
bne .tst
bx lr

.noteven:
add r2, r0
lsl r0, #1
lsr r1, #1
cmp r1, #0
bne .tst
mov r0, r2
bx lr
