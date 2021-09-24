# BGGP 2021

This was the second annual Binary Golf Grand Prix, which took place June 18th - September 17th 2021.

Challenge Announcement and Rules: https://n0.lol/bggp/2021/

This page will be updated as writeups and other resources come in!

# Category 1
Category 1 files aim to be the smallest polyglot of a given combination of files that returns or prints the value "2".

Entries here are ordered by size, largest to smallest.

## 743 Bytes - vechs/vechs_bggp
```
AUTHOR: vechs                                                        
DATE:   20210916                                                        
SIZE:   743                                                             
FILES:  ELF, RAR                                                        
SHA256: c42683c21382b552b34d0e171548cc2136acad35e382b95bdc3900711f549973
```

Links:
- [vechs twitter](https://twitter.com/__Vechs)
- File: vechs/vechs_bggp

## 489 Bytes - fliermate/bggp2021
```
AUTHOR: fliermate                                                        
DATE:   20210805                                                          
SIZE:   489                                                               
FILES:  ELF, PDF                                                          
SHA256: 821b8d0f5f5b69b3d5000fadf498cc798b4b9416ceab3432e55c2e75ba854ad8  
```

fliermate was last years BGGP winner!

Links:
- [Github](https://github.com/fliermate)
- File: fliermate/bggp2021
- Source: fliermate/BGGP2021

## 39 Bytes - s01den/sc_polyglot.nes
```
AUTHOR: s01den
DATE:   20210721                                                         
SIZE:   39                                                               
FILES:  NES ROM, x86 Shellcode                                           
SHA256: 86243302cdab17f4d2be7f845a1cac6795ee657d48a70a05e5af4dd9571e74b0 
```

We thought this file was cool even though it doesn't return 2! It won't be officially scored and is here to showcase an interesting technique!

Links:
- [s01den twitter](https://twitter.com/s01den)
- File: s01den/sc_polyglot.nes
- Source: s01den/sc_polyglot.asm

## 15 Bytes - qkumba/test2
```
AUTHOR: qkumba
DATE: 20210619
SIZE: 15
FILES: COM, Javascript
SHA256: 4bfe10fb3cb8f70c221b010d33f56923b2329dd5027b431c2a69437fc9db76bc
```
Links:
- [qkumba website](http://pferrie.epizy.com/?i=1)
- File: qkumba/test2
- Writeup: qkumba/test2.txt

## 7 Bytes - qkumba/test3
```
AUTHOR: qkumba
DATE: 20210619
SIZE: 7
FILES: COM, Javascript
SHA256: ab0c35065d65008c38d572da3d77f04be4e79c31bc24c7b7087607af062244d4
```
Links:
- [qkumba website](http://pferrie.epizy.com/?i=1)
- File: qkumba/test3
- Writeup: qkumba/writeup.test3.txt

## 3 Bytes - retr0id/bf.txt 👑
```
AUTHOR: retr0id
DATE: 20210916
SIZE: 3
FILES: brainfuck, TXT
SHA256: 963cf87ddd41be481dacec23bcb26b756803b5b57915c43f3da040f7cd9e3ef6
```
Links:
- [retr0id Twitter](https://twitter.com/David3141593)
- File - retr0id/bf.txt

---
# Category 2
Category 2 files aim to pack the most files into the base executable, with points earned for bytes overlaying the base file, and two more points for each byte from a different file executed as code.

Entries here are ordered by score, lowest to highest.

---
## remy/bggp.wasm

```
AUTHOR: remy                                                        
DATE:   20210623                                                          
SIZE:   584                                                               
FILES:  WASM, GBA ROM, 7Zip                                               
SHA256: 59c9a995f11e76ce5b996e62d5baeb4410a5f9492f9c6b205b7a9a5a8750434e  
SCORE:  1.1369
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x0248 |  **584** |       - |         - |     - | WASM             |
| 0x00A1 | 0x00A4 |    3 |       - |         - |     - | Code Section 1   |
| 0x0000 | 0x0248 |  584 |     584 |     3x2=6 |   590 | GBA ROM          |
| 0x01FE | 0x0248 |   74 |      74 |         - |    74 | 7Zip Archive     |

_Total Points / Host Size = Final Score_
664 / 584 = **1.1369**

### RUN 
```
   WASM  $ npx -p wabt wasm-interp out/main.wasm --host-print           
GBA ROM  $ cp wasm.bggp wasm.gba ; run in Visual Boy Advance - M v2.1.4 
   7Zip  $ 7z x bggp.wasm                                             
```

### Links
- [remy twitter](https://twitter.com/_mattata)
- [writeup](https://remyhax.xyz/posts/wasm-bingolfing/)
- File: remy/bggp.wasm

---
## jinn/jinn.com

```
AUTHOR: jinn
DATE:   20210621                                                        
SIZE:   32                                                              
FILES:  COM, BMP                                                        
SHA256: fed8245df8b4b60be3a96e03c8e8fb83041006925ff2709e3533ebf73d34917f
SCORE:  1.8000
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x001E |   **30** |       - |         - |     - | EXE              |
| 0x0000 | 0x0008 |    8 |       - |         - |     - | Code Section 1   |
| 0x001A | 0x001E |    4 |       - |         - |     - | Code Section 1   |
| 0x0000 | 0x0020 |   32 |      30 |   12x2=24 |    54 | BMP              |

_Total Points / Host Size = Final Score_

54 / 30 = **1.8000**

### RUN
```
COM  $ dosbox jinn.com  
BMP  $ feh jinn.com     
```

### Links
- [jinn twitter](https://twitter.com/sub_space)
- File: jinn/jinn.com

---
## retr0id/two.chip8.pbm

```
AUTHOR: retr0id
DATE:   20210916                                                        
SIZE:   23                                                              
FILES:  CHIP-8, PBM                                                     
SHA256: 1407370ca78118ae67dfd8d1127c7cfaad35c339d32ba648b69e24b8be25a141
SCORE:  1.8695                                                          
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x0017 |   **23** |         |           |       | CHIP-8 ROM       |
| 0x0000 | 0x000A |   10 |         |           |       | Code Section 1   |
| 0x0000 | 0x0017 |   23 |      23 |   10x2=20 |    43 | PBM              |

_Total Points / Host Size = Final Score_

43 / 23 = **1.8695**

### RUN
```
CHIP-8  Open two.chip8.pbm in https://ajor.co.uk/chip8/chip8.html 
   PBM  $ feh two.chip8.pbm                                       
```

### Links
- [retr0id twitter](https://twitter.com/David3141593)
- File: retr0id/two.chip-8

---
## netspooky/alert2.exe

```
AUTHOR: netspooky                                                    
DATE:   20210916                                                        
SIZE:   487                                                             
FILES:  EXE, Javascript, PDF                                            
SHA256: 55f8e1e8ebaf5f49016d74a154b18c475039d148076ad2aceec9622d1139da2b
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x01E1 |  **481** |       - |         - |     - | EXE              |
| 0x0157 | 0x01E1 |  138 |       - |         - |     - | Code Section 1   |
| 0x0000 | 0x01E7 |  487 |     481 | 138x2=276 |   757 | Javascript       |
| 0x000C | 0x0157 |  331 |     331 |         - |   331 | PDF              |

_Total Points / Host Size = Final Score_

1088 / 481 = **2.2619**

### RUN
```
       EXE  C:\> alert2.exe                                                     
Javascript  echo '<script src="./alert2.exe"></script>' > 2.html; firefox 2.html
       PDF  C:\> firefox alert2.pdf                                             
```

### Links
- [netspooky twitter](https://twitter.com/netspooky)
- File: netspooky/alert2.exe
- Source: netspooky/ns.bggp2021.asm

---
## retr0id/jar.png

```
AUTHOR: retr0id
DATE:   20210916                                                        
SIZE:   3584                                                            
FILES:  CHIP-8, PNG, brainfuck, JAR, PDF                                
SHA256: 1407370ca78118ae67dfd8d1127c7cfaad35c339d32ba648b69e24b8be25a141
SCORE:  2.8347
```

### Score Breakdown
| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x083A | **2106** |       - |         - |    -  | CHIP-8 ROM       |
| 0x0000 | 0x0008 |    8 |       - |         - |    -  | Code Section 1   |
| 0x080A | 0x083A |   48 |       - |         - |    -  | Code Section 2   |
| 0x0000 | 0x0E00 | 3584 |    2106 |  56x2=112 | 2218  | PNG              |
| 0x0031 | 0x0DEA | 3511 |    2057 |  48x2=96  | 2153  | Brainfuck        |
| 0x025B | 0x0E00 | 2981 |    1503 |  48x2=96  | 1599  | JAR              |
| 0x0991 | 0x0A93 |  258 |       - |       -   |    -  | PDF              |

_Total Points / Host Size = Final Score_

5970 / 2106 = **2.8347**

### RUN
```
   CHIP-8  Open jar.png in https://ajor.co.uk/chip8/chip8.html
      PNG  $ feh jar.png                                      
brainfuck  $ bf jar.png                                       
      JAR  $ java -jar jar.png                                
      PDF  $ cp jar.png jar.pdf ; firefox jar.pdf             
```

### Links
- [retr0id twitter](https://twitter.com/David3141593)
- File: retr0id/jar.png

---
## ben_greenwood/fileglot
```
AUTHOR: Ben Greenwood
DATE:   20210622                                                        
SIZE:   28                                                              
FILES:  COM, TXT                                                        
SHA256: 50920154f28289f3acc43f180432c20124f05eab20c45e7f00c30a30be167304
SCORE:  3.0000                                                          
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x001C |   **28** |       - |         - |     - | COM              |
| 0x0000 | 0x001C |   28 |       - |         - |     - | Code Section 1   |
| 0x0000 | 0x001C |   28 |      28 |   28x2=56 |    84 | TXT              |

_Total Points / Host Size = Final Score_

84 / 28 = 3.0000

### RUN
```
COM  $ cp fileglot fileglot.com ; dosbox fileglot.com
TXT  $ cat fileglot                                  
```

### Links
- File: ben_greenwood/fileglot
- Writeup: ben_greenwood/writeup.fileglot.txt
- Source: ben_greenwood/fileglot.asm

---
## ben_greenwood/poly
```
AUTHOR: Ben Greenwood
DATE:   20210730                                                        
SIZE:   2560                                                            
FILES:  EXE PE32, DOS EXE, HTML, TGA  RAR  PDF  MP3                     
SHA256: 73753a4dcf4a8393880d80fd39ca8fe30b7555e37838614a7f39baac185d569e
SCORE:  3.3285                                                          
```

We weren't able to open the Zip or 7z files on Ubuntu or Windows per the writeup or other tools. We tried WinRar, 7Zip, p7zip, unzip, and each one marked the file as corrupted, or opened the EXE as a zip. :(

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL | TOTAL | Description      |
|--------|--------|------|---------|---------|-------|------------------|
| 0x0000 | 0x09FF | 2560 |       - |      21 |     - | EXE PE32         |
| 0x07E8 | 0x07FD |   21 |       - |       - |     - | Code Section 1   |
| 0x0000 | 0x0080 |  128 |     128 |       - |   128 | EXE DOS          |
| 0x0000 | 0x09FF | 2560 |    2560 | 21x2=42 |  2602 | HTML             |
| 0x0000 | 0x09D9 | 2521 |    2521 | 21x2=42 |  2563 | TGA              |
| 0x0212 | 0x0942 | 1840 |    1840 | 21x2=42 |  1882 | RAR              |
| 0x02A9 | 0x03CB |  290 |     290 |       - |   290 | PDF              |
| 0x03CB | 0x07E8 | 1056 |    1056 |       - |  1056 | MP3              |
| 0x01DA | 0x09FF |      |         |         |       | Zip - Couldn't Verify |
| 0x01F0 | 0x0994 |      |         |         |       | 7z - Couldn't Verify |

_Total Points / Host Size = Final Score_

8521/2560 = 3.3285

### RUN 
```
EXE PE32  C:> poly.exe
 DOS EXE  $ cp poly poly.exe ; dosbox poly.exe
    HTML  $ cp poly poly.html ; firefox poly.html
     TGA  Open in Paint dot Net
     RAR  $ unrar poly
     PDF  $ cp poly poly.pdf ; firefox poly.pdf
     MP3  $ cp poly poly.mp3 ; vlc poly.mp3
```

### Links
- File: ben_greenwood/poly
- Writeup: ben_greenwood/writeup.poly.txt

## xcellerator/janus
```
AUTHOR: xcellerator
DATE:   20210917
SIZE:   512                                                                      
FILES:  x86 Bootloader, COM, ELF, RAR, ZIP, GNU Multiboot2 Image, Commodore64 PRG
SHA256: b2d03260b2e2303e1ea264bce3f82dd57f05c51bfeaebb02a5e485434ee3adef         
SCORE:  4.1328                                                                   
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description     |
|--------|--------|------|---------|-----------|-------|-----------------|
| 0x0000 | 0x0200 |  **512** |       - |       -   |     - | x86 Bootloader  |
| 0x0000 | 0x0002 |    2 |       - |       -   |     - | Code Section 1  |
| 0x003A | 0x004A |   16 |       - |       -   |     - | Code Section 2  |
| 0x007A | 0x00AA |   48 |       - |       -   |     - | Code Section 3  |
| 0x01B0 | 0x01BC |   12 |       - |       -   |     - | Code Section 4  |
| 0x01F5 | 0x01FE |    9 |       - |       -   |     - | Code Section 5  |
| 0x0000 | 0x0200 |  512 |     512 |  87x2=174 |   686 | COM             |
| 0x0000 | 0x01F5 |  501 |     501 |  76x2=152 |   653 | C64 PRG         |
| 0x0000 | 0x0143 |  323 |     323 |  66x2=132 |   455 | ELF             |
| 0x00BF | 0x0144 |  133 |     133 |       -   |   133 | RAR             |
| 0x00F3 | 0x019C |  169 |     169 |       -   |   169 | ZIP             |
| 0x019C | 0x01B0 |   20 |      20 |       -   |    20 | GNU Multiboot   |

_Total Points / Host Size = Final Score_

2116 / 512 = **4.1328**

### RUN
```
x86 Bootloader  $ qemu-system-x86_64 janus.com                 
           COM  $ dosbox janus.com                             
           ELF  $ ./janus.com                                  
           RAR  $ unrar janus.com                              
           ZIP  $ 7z x janus.com                               
GNU Multiboot2  $ grub-file --is-x86-multiboot2 janus.com      
       C64 PRG  $ x64 janus.com  # Use VICE emulator or similar
```

### Links
- [xcellerator twitter](https://twitter.com/TheXcellerator)
- Writeup: https://xcellerator.github.io/posts/bggp21/
- Source: https://github.com/xcellerator/janus

## qkumba/test 👑

```
AUTHOR: qkumba
DATE:   20210619                                                        
SIZE:   4096                                                            
FILES:  COM, Bash, Shell, Batch, Javascript, VBScript                   
SHA256: 5006a6fe23c5b23d59d16763a0e2b974ad761015cbb3d9c671c5894daa68afc2
SCORE:  12.0000                                                         
```

### Score Breakdown

| START  | END    | SIZE | FILE OL | EXEC OL   | TOTAL | Description      |
|--------|--------|------|---------|-----------|-------|------------------|
| 0x0000 | 0x1000 | 4096 |    4096 |             |       | COM          |
| 0x0000 | 0x1000 | 4096 |    4096 |             |       | Code Section |
| 0x0000 | 0x1000 | 4096 |    4096 | 4096x2=8192 | 12288 | Bash/Shell   |
| 0x0000 | 0x1000 | 4096 |    4096 | 4096x2=8192 | 12288 | Batch        |
| 0x0000 | 0x1000 | 4096 |    4096 | 4096x2=8192 | 12288 | Javascript   |
| 0x0000 | 0x1000 | 4096 |    4096 | 4096x2=8192 | 12288 | VBScript     |

_Total Points / Host Size = Final Score_

49152 / 4096 = **12.0000**

### RUN
```
       COM  $ dosbox test                                                       
Bash/Shell  $ ./test                                                            
     Batch  C:\> test.bat                                                       
Javascript  echo '<script src="./test"></script>' > test.html; firefox test.html
  VBScript  C:\> cscript test.vbs                                               
```

### Links
- [qkumba twitter](https://twitter.com/a2_qkumba)
- [qkumba website](http://pferrie.epizy.com/?i=1)
- Writeup: qkumba/writeup.test.txt

