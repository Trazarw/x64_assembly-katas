SECTION .data

    msg:    db "Enter your date of birth", 0b1010
	msg_l:	equ $-msg

SECTION .bss

    date: dd ""   

SECTION .text

    global _start
    
        _start:

            ;Write Message
            mov rax, 1
            mov rdi, 1
            mov rsi, msg
            mov rdx, msg_l  
            syscall

            ;Read Input
            mov rax, 0
            mov rsi, date
            mov rdx, 11
            syscall

            ;Test
            mov rax, 1
            mov rdi, 1
            mov rsi, date
            syscall 

            ;get time
            ;parse input to timeval 
            ;calculate age
            ;write age

            ;Exit
            mov rax, 60
			mov rdi, 0
			syscall
            
