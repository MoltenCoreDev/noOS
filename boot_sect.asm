[org 0x7c00]

mov si, STR
call printf
mov ah, 0x0e
mov al, 10
int 0x10

powerush:
	mov ah, 00h
	int 16h
	mov ah, 0x0e
	int 0x10
	jmp powerush

jmp $

%include "./printf.speak"

STR: db 'Welcome to noOS 1.1.0-playground', 0

times 510-($-$$) db 0
dw 0xaa55