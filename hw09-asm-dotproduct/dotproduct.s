	.global _Z10dotproductPdS_

_Z10dotproductPdS_:


	vldr d1, [r0, #0]
	vldr d2, [r1, #0]
	vmul.f64  d0, d1, d2

	vldr d1, [r0, #8]
	vldr d2, [r1, #8]
	vmla.f64 d0, d1, d2

	vldr d1, [r0, #16]
	vldr d2, [r1, #16]
	vmla.f64 d0, d1, d2

	bx lr

	


	

	

	
	
