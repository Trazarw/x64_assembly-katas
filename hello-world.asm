SECTION .data

	new_l:  equ 0b1010
	msg:    db "Yo-", "Hello world!", new_l
	msg_l:	equ $-msg

SECTION .text

	global _start

		_start:

			mov rax, 1
			mov rdi, 1
			mov rsi, msg
			mov rdx, msg_l
			syscall

			mov rax, 60
			mov rdi, 0
			syscall