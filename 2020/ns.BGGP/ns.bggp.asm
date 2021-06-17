BITS 64

        org 0x100000000  ; Where to load this into memory

;----------------------+------+-------------+----------+------------------------
; ELF Header struct    | OFFS | ELFHDR      | PHDR     | ASSEMBLY OUTPUT
;----------------------+------+-------------+----------+------------------------
        db 0x7F, "ELF" ; 0x00 | e_ident     |          | 7f 45 4c 46
_start:          
    add eax,0x4831ff0f ; The reverse of
    cmp al,0xb0        ; the exit syscall
    nop                ; 90
    nop                ; 90
    nop                ; 90
    jmp hjmp           ; eb 34
;----------------------+------+-------------+----------+------------------------
; ELF Header struct ct.| OFFS | ELFHDR      | PHDR     | ASSEMBLY OUTPUT
;----------------------+------+-------------+----------+------------------------
    dw 2               ; 0x10 | e_type      |          | 02 00
    dw 0x3e            ; 0x12 | e_machine   |          | 3e 00
    dd 1               ; 0x14 | e_version   |          | 01 00 00 00
    dd _start - $$     ; 0x18 | e_entry     |          | 04 00 00 00 
;----------------------+------+-------------+----------+------------------------
; Program Header Begin | OFFS | ELFHDR      | PHDR     | ASSEMBLY OUTPUT
;----------------------+------+-------------+----------+------------------------
phdr:
    dd 1               ; 0x1C |   ...       | p_type   | 01 00 00 00 
    dd phdr - $$       ; 0x20 | e_phoff     | p_flags  | 1c 00 00 00
    dd 0               ; 0x24 |   ...       | p_offset | 00 00 00 00
    dd 0               ; 0x28 | e_shoff     |   ...    | 00 00 00 00
    dq $$              ; 0x2C |   ...       | p_vaddr  | 00 00 00 00 
                       ; 0x30 | e_flags     |   ...    | 01 00 00 00 
    dw 0x40            ; 0x34 | e_shsize    | p_addr   | 40 00
    dw 0x38            ; 0x36 | e_phentsize |   ...    | 38 00
    dw 1               ; 0x38 | e_phnum     |   ...    | 01 00
    dw 2               ; 0x3A | e_shentsize |   ...    | 02 00
    ;dq 2              ; 0x3C | e_shnum     | p_filesz | 02 00 00 00 00 00 00 00
    dw 0x0beb          ; eb 0b ; Overwrites e_shnum and p_filesz
    dw 0
    dd 0
hjmp:
   ;dq 2               ; 0x44 |             | p_memsz  | 02 00 00 00 00 00 00 00
    jmp sec0           ; eb 0b ; Overwrites p_memsz
    dw 0
    dd 0
   ;dq 2               ; 0x4C |             | p_align  | 02 00 00 00 00 00 00 00
;--- Outer bounds of executable portion
    cmp al, 0xeb              ; 3c eb ; Overwrites p_align
    db 0xc0                   ; c0
    db 0x31                   ; 31
    db 0x48                   ; 48
sec0:
    push   rax                ; 50 
    push   rbp                ; 55 
    push   rax                ; 50 
    push   rax                ; 50 
    pop    rcx                ; 59 
    push   rbx                ; 53 
    push   rax                ; 50 
    pop    rcx                ; 59 
    push   rax                ; 50 
    push   rbx                ; 53 
    pop    rcx                ; 59 
    push   rax                ; 50 
    push   rax                ; 50 
    push   rbp                ; 55 
    push   rax                ; 50 
    jmp sec1                  ; eb 18
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    add eax,0x40b6950f        ; 05 0f 95 b6 40 ; Third byte is str offset
    and dh,ah                 ; 20 e6
    ror DWORD [rax-0x3a],0x89 ; c1 48 c6 89
    dd 0x89c7b20f             ; 0f b2 c7 89
    add BYTE [rax],al         ; 00 00
    add BYTE [rcx],al         ; 00 01
;--- split - the first byte is shared with the mov rax,1
sec1:
    mov rax, 1                ; b8 01 00 00 00 
    mov edi, eax              ; 89 c7          
    mov dl, 15                ; b2 0f          
    mov esi, eax              ; 89 c6          
    shl rsi, 0x20             ; 48 c1 e6 20    
    mov sil, 0x95             ; 40 b6 95       
    syscall                   ; 0f 05          
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    nop                       ; 90
    sbb bl, ch                ; 18 eb
sec2:
    push   rax                ; 50 
    push   rbp                ; 55 
    push   rax                ; 50 
    push   rax                ; 50 
    pop    rcx                ; 59 
    push   rbx                ; 53 
    push   rax                ; 50 
    pop    rcx                ; 59 
    push   rax                ; 50 
    push   rbx                ; 53 
    pop    rcx                ; 59 
    push   rax                ; 50 
    push   rax                ; 50 
    push   rbp                ; 55 
    push   rax                ; 50 
    xor rax, rax              ; 48 31 c0
    jmp rstart                ; eb 3c
;--- Header Mirror
    dd 0
    dw 0
    dw 0xeb0b          ; 0x44 |             | p_memsz  | 02 00 00 00 00 00 00 00
    dd 0               ;
    dw 0               ;
    dw 0xeb0b          ; 0x3C | e_shnum     | p_filesz | 02 00 00 00 00 00 00 00
    db 0               ;
    db 2               ; 0x3A | e_shentsize |   ...    | 02 00
    db 0               ;
    db 1               ; 0x38 | e_phnum     |   ...    | 01 00
    db 0               ;
    db 0x38            ; 0x36 | e_phentsize |   ...    | 38 00
    db 0               ;
    db 0x40            ; 0x34 | e_shsize    | p_addr   | 40 00
    dw 0               ;
    db 0               ;
    db 1               ; 0x30 | e_flags     |   ...    | 01 00 00 00 
    dd 0               ; 0x2C |   ...       | p_vaddr  | 00 00 00 00 
    dd 0               ; 0x28 | e_shoff     |   ...    | 00 00 00 00
    dd 0               ; 0x24 |   ...       | p_offset | 00 00 00 00
    dw 0               ;
    db 0               ;
    db 0x1c            ; 0x20 | e_phoff     | p_flags  | 1c 00 00 00
    dw 0               ;
    db 0               ;
    db 1               ; 0x1C |   ...       | p_type   | 01 00 00 00 
    dw 0               ;
    db 0               ;
    db 4               ; 0x18 | e_entry     |          | 04 00 00 00 
    dw 0               ;
    db 0               ;
    db 1               ; 0x14 | e_version   |          | 01 00 00 00
    db 0               ;
    db 0x3e            ; 0x12 | e_machine   |          | 3e 00
    db 0               ;
    db 2               ; 0x10 | e_type      |          | 02 00
rstart:
    xor al, 0xeb       ; 34 EB ; Jmp in reverse
    nop                ; 90
    nop                ; 90
    nop                ; 90
    mov al, 0x3c       ; b0 3c   
    xor rdi, rdi       ; 48 31 ff
    syscall            ; 0f 05   
    db "F" 
    db "L"
    db "E"
    db 0x7F            ; 0x00 | e_ident     |          | 7f 45 4c 46
