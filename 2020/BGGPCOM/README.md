# BGGP
Binary Golf Grand Prix

This x86 DOS .COM executable will display a blinking É character at the center of the console screen.

The memory address of text mode screen is B800:0, so 0x7D0 (2000th) byte will be pointing to the center of a 80x25 console screen. (Remember each character has a pair of two bytes, ASCII value followed by color code)

Thanks @netspooky for giving me this opportunity to submit my entry. I accidentally found out his inaugural challenge of BGGP while searching for my full name. I did not know that my ASM code titled 'Horizontal Slice' is featured on https://github.com/netspooky/hardcode/tree/master/00128/dos/horizontal%20slice

 

```
JMP 103             EB01
RET                 C3
MOV AX, B800        B800B8
MOV ES, AX          8EC0
MOV DI, 07D0        BFD007  
MOV AX, 9090        B89090
MOV ES:[DI], AX     268905
ADD AX, 2689        058926
NOP                 90
NOP                 90
MOV AX, D007        B807D0
MOV DI, 8EC0        BFC08E
MOV AX, B800        B800B8
RET                 C3
ADD BX, BP          01EB
