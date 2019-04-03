bits 32
section		.text
	align 4
	dd 	0x1BADB002
	dd 	0x00
	dd 	-(0x1BADB002+0x00)

global start
extern kmain ;this function is gonnon be located in our c code(kernel.c)
start:
	cli  ;clears the interupts
	call kmain ;calls the kernel(send processor tp continue execution fron kamin function in c code
	hlt ; halt the cpu(pause it from the executing from this address
