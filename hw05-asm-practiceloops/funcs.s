	/*Name: Allison Buffenbarger
	I pledge my honor that I have abided by the Stevens Honor System
	-Allison Buffenbarger*/

	.globl _Z5counti
_Z5counti:
	mov r1, #1
.loop:
	add r1, r1, #1
	cmp r0, r1
	bgt .loop
	bx lr
	
	.globl _Z9countDowni
_Z9countDowni:

.loop1:
	sub r0, r0, #1
	cmp r0, #0
	bgt .loop1
	bx lr


	.globl _Z3sumii
_Z3sumii:

	mov r2, #0
	
.loop2:
	add r2, r0, r2
	add r0, r0, #1
	cmp r0, r1
	ble .loop2
	mov r0, r2
	bx lr
	
	.globl _Z4facti
_Z4facti:

	mov r1, #1
	mov r2, #1

.loop3:
	mul r1, r1, r2
	add r2, r2, #1
	cmp r2, r0
	ble .loop3
	mov r0, r1
	bx lr

	

