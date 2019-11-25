	@Author: Allison Buffenbarger
	@I pledge my honor that I have abided by the Stevens Honor System.
	@I worked on this in lab with Sarah Bertussi. -Allison Buffenbarger


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

	


	

	

	
	
