; BootNoodle
; A Palindromic Bootloader for the BGGP Competition
; github.com/xcellerator/bootnoodle

org 0x7C00
bits 16

db 0xaa, 0x55

_start:
	db 0xe8, 0xdb, 0x1	;	call clearScreen
	call setCursor
	db 0xbe, 0x0a, 0x7d	;	mov si, msg
	call printString
	jmp $

;clearScreen:
;	pusha			;	60
;	mov ah, 0x06		;	b4 06
;	xor al, al		;	30 c0
;	mov bh, 0x03		;	b7 03
;	xor cx, cx		;	31 c9
;	mov dx, 0x184F		;	ba 4f 18
;	int 0x10		;	cd 10
;	popa			;	61
;	ret			;	c3

clearScreen db 0xc3, 0x61, 0x10, 0xcd, 0x18, 0x4f, 0xba, 0xc9, 0x31, 0x03, 0xb7, 0xc0, 0x30, 0x06, 0xb4, 0x60

setCursor:
	pusha
	mov ah, 0x02
	mov bh, 0x00
	mov dh, 2
	mov dl, 0
	int 0x10
	popa
	ret

;printChar:
;	mov ah, 0x0e		;	b4 0e
;	mov bh, 0x0		;	b7 00
;	mov bl, 0x0		;	b3 00
;	int 0x10		;	cd 10
;	ret			;	c3

printChar db 0xc3, 0x10, 0xcd, 0x00, 0xb3, 0x00, 0xb7, 0x0e, 0xb4

printString:
	pusha
	.loop:
		lodsb
		test al, al
		jz .end
		;call printChar
		db 0xe8, 0x8b, 0x01	; call printChar
		call delay
	jmp .loop
	.end:
		popa
		ret

delay:
	pusha
	mov ah, 0x86
	mov al, 0
	mov cx, 0
	mov dx, 20
	int 0x15
	popa
	ret

msg db 0x0, 'oi.buhtig.rotarellecx', 0xa, 0xd, 0xa, 0xd, '/_/____\/____\/_____/', 0xa, 0xd, '/____ / /_/ / /_/ / /_/ / ', 0xa, 0xd, '/ /_/ /__ / /__ / /  __ /  ', 0xa, 0xd, '\ __ /____ /____ /) __ /   ', 0xa, 0xd, '________________  ____    '

; MBR Signature
	times 510-($-$$) db 0
	db 0x55
	db 0xaa
