@Name: Allison Buffenbarger
	@I pledge my honor that I have abided by the Stevens Honor system.
	@I worked with Sarah Bertussi in lab. -Allison Buffenbarger

.global _Z6add128R6BigNumRKS_S2_

_Z6add128R6BigNumRKS_S2_:
	@r1=pointer to b3
	@r2=pointer to b1
	@r3=pointer to b2
	@r4=where I'm actively working
	@r5=storing my result
	@r6=storing b1
	@r7=storing b2


	
	push {r4, r5, r6, r7}

	ldr r4,=#12
	ldr r6, [r2,r4]
	ldr r7, [r3,r4]
	adds r5, r6, r7
	str r5, [r1,r4]


	ldr r4,=#8
	ldr r6, [r2,r4]
	ldr r7, [r3,r4]
	adcs r5, r6, r7 	@s is for set carry bit, c is for add carry bit
	str r5, [r1,r4]

	ldr r4,=#4
	ldr r6, [r2,r4]
	ldr r7, [r3,r4]
	adcs r5, r6, r7 	@s is for set carry bit, c is for add carry bit
	str r5, [r1,r4]

	ldr r4,=#0
	ldr r6, [r2,r4]
	ldr r7, [r3,r4]
	adcs r5, r6, r7 	@s is for set carry bit, c is for add carry bit
	str r5, [r1,r4]


	pop {r4, r5, r6, r7}
	bx lr
