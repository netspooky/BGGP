format ELF64 executable 3

segment readable executable

entry $

	mov	edx,len
	lea	rsi,[num]
	mov	edi,1		; STDOUT
	mov	eax,1		; sys_write
	syscall

	mov	edi,2
	mov	eax,60		; sys_exit
	syscall

segment readable writeable

num db "2",0xA
len = $ - num
pdf1 db "%PDF-1.",0xA
pdf2 db "1 0 obj<</Kids[<</Resources<<>>/Contents 2 0 R/Parent 1 0 R/Type/Page/MediaBox[0 0 99 99]>>]/Type/Pages/Count 1>>endobj",0xA
pdf3 db "2 0 obj<<>>stream",0xA
pdf4 db "BT/ 9 Tf(BGGP 2021)' ET",0xA
pdf5 db "endstream",0xA
pdf6 db "endobj",0xA
pdf7 db "3 0 obj<</Type/Catalog/Pages 1 0 R>>endobj",0xA
pdf8 db "trailer<</Info<</Author(BGGP)>>/Root 3 0 R>>",0xA
