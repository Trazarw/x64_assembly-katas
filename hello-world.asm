SECTION .data

	msg:    db "Yo-", "Hello world!", 0b1010
	msg_l:	equ $-msg

SECTION .text

	global _start

		_start:
		
			mov rax, 1 ;Write Message
			mov rsi, msg
			mov rdx, msg_l
			mov rdi, 1
			syscall
		
			mov rax, 60	;Exit Program
			mov rdi, 0
			syscall