;        ___________                              __
;        \__    ___/____ ______      ____  __ ___/  |_
;          |    | /     \\____ \    /  _ \|  |  \   __\
;          |    ||  Y Y  \  |_> >  (  <_> )  |  /|  |
;          |____||__|_|  /   __/ /\ \____/|____/ |__|
;                        \/|__|    \/
;
;+-----------------------------------------------------------------------------+
;|::::::::::| a boring x86 shellcode which is also a valid NES ROM  |::::::::::|
;+-----------------------------------------------------------------------------+
;
; by s01den
;
; build command: nasm -f elf32 sc_polyglot.asm && ld -m elf_i386 sc_polyglot.o -o sc_polyglot
; ------------- Useful/cool links -------------
; https://bheisler.github.io/post/nes-rom-parser-with-nom/
; https://skilldrick.github.io/easy6502/
; emulator: https://rodri042.github.io/nestation/
; ----------------------------------------------

section .text
global _start

_start:

header: ; a valid NES header
  dec esi    ; 0x4E : 'N'
  inc ebp    ; 0x45 : 'E'
  push ebx   ; 0x53 : 'S'
  db `\x1a\xc0`  ; sbb al, al
  db `\x73\x0a`  ; jnb code
  db `\x00\x00\x00\x00\x00\x00\x00\x00\x00` ; the mandatory 6 null-bytes

  nop
code:
  db `\x76\x11` ;those bytes means jbe valid_x86_code in x86 and ror 1,X in nes 6502   <--- idea from http://phrack.org/issues/57/14.html#article (/* magic string */)
  valid_nes_code:
  db `\xa9\x01\x8d\x01\x02\xa9\x05\x8d\x02\x02\xa9\x08\x8d\x03\x02\xd0\xef` ; <---
  ; do:                                                                          |
  ;  LDA #$01                                                                    |
  ;  STA $0201      <-------------------------------------------------------------
  ;  LDA #$05
  ;  STA $0202
  ;  LDA #$08
  ;  STA $0203
  ;  BNE DO
  valid_x86_code:
  inc eax ; since eax is null thanks to sbb al, al, we just have to inc it to exit
  int 0x80