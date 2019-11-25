@Author: Allison Buffenbarger
@I pledge my honor that I have abided by the Stevens Honor System.
@I worked on this in lab with Sarah Bertussi. -Allison Buffenbarger

.global _Z5powerii

_Z5powerii:

@r0=base
@r1=power

mov r2, #1
cmp r1, #0
bne .loop
mov r0, #1
bx lr

.loop:

mul  r2, r0
subs r1, #1
bne .loop

mov r0, r2
bx lr
