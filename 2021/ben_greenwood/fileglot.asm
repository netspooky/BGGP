org 100h

; load '2' into dx
push 0x32;
pop dx;

; Set the stack pointer to ptarget + 4, this gives room for two 2-byte instructions
push 0x200A
pop ax;
xor ax,(0x200A xor (ptarget + 4))
push ax;
pop sp;

; Create the instruction "int 20h" - exit program
push 0x207E;
pop ax;
inc ax;
inc ax;
xor al,0x4D;

; Store instruction at ptarget + 2
push ax;

; Create instruction "int 21h" - call DOS interrupt
or ax,0x214D

; Store instruction at ptarget
push ax

; Set ah to 2 so the DOS interrupt called will be "Print charater in dl to STDOUT"
xor ax,0x2320;

; Execute the instructions created earlier
ptarget:
; int 21h
; int 20h
