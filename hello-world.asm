SECTION .data

	msg:    db "Yo-", "Hello world!", 0b1010
	msg_l:	equ $-msg

SECTION .text

	global _start

		_start:

			;Write Messasge
			mov rax, 1 
			mov rdi, 1
			mov rsi, msg
			mov rdx, msg_l
			syscall
			
			;Exit
			mov rax, 60	
			mov rdi, 0
			syscall