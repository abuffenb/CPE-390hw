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
	tst r0, r2
	bne        
	and r3,r0,r2
	cmp r3, r3


_Z6toggleii:

	mov	r2, #1
	lsl     r2, r1
	eor     r0, r2

	
	

	


