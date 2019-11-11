	.global _Z10addelementPii

_Z10addelementPii:	
	@r0= address of [X]
	@r1= length
	@r2= work table
	@r3 = memory location

	mov r3, #0
.loop:
	ldr r2, [r0, r3]
	add r2, r2, #1
	str r2, [r0, r3]
	add r3, r3, #4
	subs r1, r1, #1
	bne .loop

	bx lr
	
	
