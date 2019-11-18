	@ Author : Allison Buffenbarger
	@ I pledge my honor that I have abided by the stevens honor system.
	@I collaborated with Sarah Bertussi
	
	.global _Z3setii
	.global _Z5clearii
	.global _Z4testii
	.global _Z6toggleii

_Z3setii:

	mov	r2, #1
	lsl	r2, r1
	orr	r0, r0, r2
	bx lr

_Z5clearii:
	
	mov	r2, #1
	lsl	r2, r1
	bic	r0, r2
	bx lr

_Z4testii:
	mov r2, #1
	lsl r2, r1
	and r0, r2
	lsr r0, r1
	bx lr

_Z6toggleii:

	mov	r2, #1
	lsl     r2, r1
	eor     r0, r2
	bx lr
