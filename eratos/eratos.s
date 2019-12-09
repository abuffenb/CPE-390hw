	@Author: Allison Buffenbarger
	@I pledge my honor that I have abided by the Stevens Honor System.
	@I collaborated with Sarah Bertussi and Zachary Raina. -Allison Buffenbarger
	@I troubleshooted for a long time but could only get it to run up to 100000
	.global _Z3eraPjj

_Z3eraPjj:

	push {r3-r11}
	
	@r0=array starts here
	@r1=# of numbers
	@r2=square root of # of numbers
	@r11 = counter
	ldr r2, =#1000		@sqrt of 100000
	mov r11, #1

	@task 1:
	@for(int i=2, i<sqrt(n), i++) {
	@for(int j=i*i, j<(n), j=j+i) {
	@prime[j]=false }}

	@task: assume all numbers = prime
	@figure out how many words needed = (R+31)/32
	@r3=0xFFFFFFFF
	@r4=(r1+31)/32=number of words

	ldr r3, =#0xFFFFFFFF	@r3=0xFFFFFFFF
	add r4, r1, #31		@r4=r1+31
	lsr r4, #5		@r4=(r1+31)/32

	
	@task 2: find a maximum offset
	@max offset = 4*number of numbers - 4 = 4*r4-4

	lsl r4, #2
	sub r4, r4, #4

	@r4 = maximum offset
	@r5 = current offset

	mov r5, #0

.makeprime:

	str r3, [r0, r5]	@set number at current offset to 0xFFFFFFFF
	add r5, r5, #4	@increment offset by 4
	cmp r5, r4	@compare current offset and maximum offset
	ble .makeprime

	@Summary:
	@r0=array
	@r1=# of numbers
	@r2=sqrt(# of numbers)
	@r3=0xFFFFFFFF
	@r4=max offset = 4*number of words - 4
	@r5 =max offset (used to be current offset but changed b/c .makeprime)

	@r1=n

	@r2=sqrt(n)
	@r3=i
	@r4=j

	mov r3, #2	@r3=2

.outer:

	mul r4, r3, r3	@reset j to i^2 when finish outerloop

.inner:

	@need to point to word we're on
	@word = number/32 = number LSR 5 = j/32
	lsr r5, r4, #5	 @r5=word we're on

	@to find which bit in word that we're on
	@j mod 32 = bit number	@r4 AND 31 = r4 mod 32

	and r6, r4, #31

	@Summary:
	@r5=r4>>5
	@r6=r4 AND 31

	@r5=word
	@r6=position of bit
	@r7=offset = r5*4

	lsl r7, r5, #2

	@r8=will clear bits

	mov r8, #1
	lsl r8, r6
	mvn r8, r8

	@task:
	@get word from specific offset and place in r10 then clear bit

	ldr r9, [r0, r7]
	mov r10, r9
	and r9, r8
	str r9, [r0, r7]

	@Summary:
	@r1=n
	@r2=sqrt(n)
	@r3=i
	@r4=j
	@r5=word=j/32=r4>>5
	@r6=bit position= j mod 32 = r4 and 32
	@r7 =offset=r5*4=word*4
	@r8=11101111
	@r9=modified word
	@r10=original word


	b .counter 	@branch to counter
	.return:		@return from counter

	add r4, r3
	cmp r4, r1 @j < n
	ble .inner

	add r3, r3, #1
	cmp r3, r2	@i < sqrt(n)
	ble .outer
	sub r0, r1, r11	@# of bits - # of bits changed = number of bits remaining
	cmp r1, #31
	blt .end	

	sub r0, r0, #1
.end:

	pop {r3-r11}
	bx lr

.counter:	@will show how many bits changed if og word and mod word are different

	cmp r9, r10
	addne r11, r11, #1
	b .return
	
	
