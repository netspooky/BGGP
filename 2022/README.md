The [Third Annual Binary Golf Grand Prix](https://tmpout.sh/bggp/3/) took place from June 17th 2022 until September 2nd 2022. 

## Goal

The goal of this challenge was to create the smallest file (under 4 kilobytes) that crashed a given program. Additional points were rewarded hitting other goals. 

The scores were calculated as follows:

- Base Score = 4096 - File Size
- Add 1024 for publishing a write up
- Add 1024 if the program counter was overwritten with 0x33's or ASCII "3"
- Add 2048 if code execution was achieved (proven by printing or returning the value "3")
- Add 4096 if you author a patch which is merged by the end of the competition.

## Stats

There were a total of 34 entries, more than double from last year and over 8 times the amount of the first BGGP. 

- 23 entries came with writeups
- 3 entries included code execution. This was challenging because some entries could have achieved this, but it would've added greatly to the file size.
- 8 entries had patches that were authored and merged before the end of the competition.
- 2 additional entries had patches which were rejected :(
- 2 entries did not qualify as official entries due to size, delivery method, or other issue. These are included at the end.

Also, four new CVEs were awarded to participants 

- [CVE-2022-39028](https://nvd.nist.gov/vuln/detail/CVE-2022-39028) - telnetd in GNU Inetutils through 2.3, MIT krb5-appl through 1.0.3, and derivative works
- [CVE-2022-39843](https://www.cvedetails.com/cve/CVE-2022-39843/) - Lotus 1-2-3 R3 for Linux < 1.0.0rc3
- [CVE-2022-34927](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-34927) - MilkyTracker v1.03.00
- [CVE-2022-40363](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-40363) - Flipper Zero < v0.65.2

## Scored Entries

These are the scored entries for BGGP3. Click on the author name to see their entry in this repo. The directories include the entry which was sent to us (.txt file), and the binary file of the entry (.bin file). 

For the writeup and patch modifiers, the associated writeups and patches are linked from the score number in the table below. There is also a notes column which may be out of the viewport, scroll to the right to see.

| Author | Date | Target | Size | Writeup | PC | Exec | Patch | Total Points | Notes |
|--------|------|--------|------|---------|----|------|-------|--------------|-------|
| [David3141593](./david3141593) | 20220729 | chip8 0.2.0-1ubuntu1 | 20 | +[1024](https://www.da.vidbuchanan.co.uk/blog/bggp3.html) | +0 | +2048 | +[4096](https://github.com/danirod/chip8/pull/35) | **11244** | |
| [Dan Bastone](./danbastone) | 20220903 | Lotus 1-2-3 R3 for Linux < 1.0.0rc3 | 34 | +[1024](https://github.com/taviso/123elf/issues/103) | +0 | +2048 | +[4096](https://github.com/taviso/123elf/pull/104) | **11230** | This score was adjusted, the exploit points were mistakenly not given. See the writeup for details. |
| [PierreKimSec](./pierrekim_alextor) & [AlexTorSec](./pierrekim_alextor) | 20220824 | multiple versions of telnetd | 2 | +[1024](https://pierrekim.github.io/blog/2022-08-24-2-byte-dos-freebsd-netbsd-telnetd-netkit-telnetd-inetutils-telnetd-kerberos-telnetd.html) | +0 | +0 | +[4096](https://git.hadrons.org/cgit/debian/pkgs/inetutils.git/commit/?id=113da8021710d871c7dd72d2a4d5615d42d64289) | **9214** | |
| [fridayortiz](./fridayortiz) | 20220717 | Cave Story (HaikuOS) | 8 | +[1024](https://ortiz.sh/identity/2022/07/17/BGGP3.html) | +0 | +0 | +[4096](https://github.com/EXL/NXEngine/pull/9) | **9208** | |
| [\_mattata](./_mattata) | 20220714 | GNUCobol v3.1.2.0 | 40 | +[1024](https://remyhax.xyz/posts/bggp3-cob/) | +0 | +0 | +[4096](https://sourceforge.net/p/gnucobol/code/4656/) | **9176** | |
| [s01den](./s01den) | 20220727 | upx git-d7ba31+ | 518 | +[1024](https://s01den.github.io/notes_upx.txt) | +0 | +0 | +[4096](https://github.com/upx/upx/commit/e95a82e390b5b1b9d20d65ed6d2297f47048a9d8) | **8698** | |
| [royhax91](./royhax91) | 20220804 | MilkyTracker v1.03.00 | 701 | +[1024](https://github.com/milkytracker/MilkyTracker/issues/275) | +0 | +0 | +[4096](https://github.com/milkytracker/MilkyTracker/issues/275) | **8515** | |
| [qkumba](./qkumba) | 20220901 | AppleWin v1.30.10.0 | 6 | +0 | +0 | +0 | +[4096](https://github.com/AppleWin/AppleWin/issues/1126) | **8186** | |
| [urisk](./urisk) | 20220827 | Gameboy Colour BIOS0 | 58 | +[1024](https://github.com/UriskLyErg/BGGP3) | +1024 | +2048 | +0 | **8134** | |
| [vechs](./vechs) | 20220825 | gnome-logs - Version 42.0 | 1 | +[1024](https://innanet-user.github.io/bggp/3/writeup.txt) | +0 | +0 | +0 | **5119** | |
| [0xNinja](./0xNinja) | 20220728 | Espruino | 4 | +[1024](https://0xninja.fr/bggp3/) | +0 | +0 | +0 | **5116** | A patch was suggested but a different patch was written and merged :( |
| [ifygecko](./ifygecko) | 20220902 | chocolate-doom | 8 | +[1024](https://github.com/ifyGecko/BGGP3) | +0 | +0 | +0 | **5112** | |
| [echel0n](./echel0n) | 20220729 | Brainflow | 14 | +[1024](https://devilinside.me/blogs/brainflow-more-brainoverflow) | +0 | +0 | +0 | **5106** | |
| [yungintranet](./yungintranet) | 20220821 | nftables | 19 | +[1024](https://malware.foundation/nft-nftables-fuzzing-target/) | +0 | +0 | +0 | **5101** | A patch was suggested but a different patch was written and merged :( |
| [novafacing](./novafacing) | 20220818 | clang | 23 | +[1024](https://novafacing.github.io/Binary-Golf-Grand-Prix/) | +0 | +0 | +0 | **5098** | |
| [nopnopgoose](./nopnopgoose) | 20220902 | PCSX 2 Playstation 2 Emulator | 45 | +[1024](https://gist.github.com/nopnopgoose/49ddcb055080bc3c0bd2299e206f01ea) | +0 | +0 | +0 | **5075** | |
| [LouisKronberg](./lkron) | 20220724 | mold v1.2.1 | 50 | +[1024](http://www.louiskronberg.de/bggp3/writeup.html) | +0 | +0 | +0 | **5070** | |
| [junyian](./junyian) | 20220716 | GIMP 2.10.30 | 67 | +[1024](https://junyian.github.io/posts/bggp3/) | +0 | +0 | +0 | **5053** | |
| [netspooky](./netspooky) | 20220901 | rizin 0.4.0 | 72 | +[1024](https://n0.lol/lemonade/) | +0 | +0 | +0 | **5048** | |
| [endofunky](./endofunky) | 20220824 | patchelf | 92 | +[1024](https://xoreaxeax.com/b/bggp3) | +0 | +0 | +0 | **5028** | |
| [h0wdy](./h0wdy) | 20220831 | Renoise 3.4.2 | 128 | +[1024](http://h0wdy.partners/bggp/3.html) | +0 | +0 | +0 | **4992** | |
| [scratchadams118](./scratchadams118) | 20220721 | munpack | 158 | +[1024](https://medium.com/@kevin.massey1189/crashing-munpack-for-bggp3-3b0226909d63) | +0 | +0 | +0 | **4962** | |
| [tecknicaltom](./tecknicaltom) | 20220619 | mediainfo v21.09 | 2 | +0 | +0 | +0 | +0 | **4094** | |
| [qkumba](./qkumba) | 20220627 | DOSBox 0.74 | 2 | +0 | +0 | +0 | +0 | **4094** | |
| [0xdroogy](./0xdroogy) | 20220712 | qterminal 0.17.0 | 2 | +0 | +0 | +0 | +0 | **4094** | |
| [tecknicaltom](./tecknicaltom) | 20220622 | exactimage 1.0.2 | 4 | +0 | +0 | +0 | +0 | **4092** | |
| [seerskye](./seerskye) | 20220902 | Hot Soup Processor 3.6 | 5 | +0 | +0 | +0 | +0 | **4091** | |
| [linted](./linted) | 20220831 | gdb 12.0.90 | 13 | +0 | +0 | +0 | +0 | **4083** | |
| [David3141593](./david3141593) | 20220812 | qemu | 29 | +0 | +0 | +0 | +0  | **4067** | [POC](https://twitter.com/David3141593/status/1558051099868815362) |
| [netspooky](./netspooky) | 20220726 | radare2 v5.7.0 | 32 | +0 | +0 | +0 | +0 | **4064** | [POC](https://twitter.com/netspooky/status/1552047700413235201) |
| [softwarejosh](./softwarejosh_potionhax) & [potionhax](./softwarejosh_potionhax) | 20220902 | libjpeg-turbo-2.1.4 | 166 | +0 | +0 | +0 | +0 | **3930** | |
| [q3w3e3](./q3w3e3) | 20220724 | Portal 2 | 1094 | +0 | +0 | +0 | +0 | **3002** | |

## Honorable Mentions

These entries were written with BGGP3 in mind, but didn't qualify due to reasons discussed in their respective writeups.

- [TheXcellerator](./xcellerator) - 20220826 - [tetsuji](https://xcellerator.github.io/posts/tetsuji/): Pokemon Crystal RCE 
- [VVX7](./vvx7) - 20220902 - [Flipper Zero NFC Buffer Overflow](https://vvx7.io/posts/2022/09/your-amiibos-haunted/)
- eatscrayon - [Things that are not BGGP3 Entries](https://forum.spacehey.com/topic?id=89761) - Weirdness in CHASOPRO 4.0.249, Famitracker v0.4.6, and Windows Event Logs

## .fini

Huge thanks go to the following:
- Everyone who participated this year!
- Everyone who shared, wrote about, expanded on, debated, wrote patches for, and were inspired by this year's Binary Golf Grand Prix.
- [Binary Golf Association](https://twitter.com/binarygolf) for helping with organizing, brain storming, and promoting the event. 
- [tmp.0ut](https://twitter.com/tmpout) for allowing us to use their website to host the challenge announcement.
- [xcellerator](https://twitter.com/TheXcellerator) for doing a majority of the scoring and verification.
- [yoffdog](https://twitter.com/yoffdog) for designing the poster, logo, and other assets

An ultra-special thanks goes to everyone who encouraged, coached, and guided many of the new people who worked on this challenge. Several people who participated this year had never found a bug before, let alone written a PoC, a patch, or a detailed technical blog. This kind of community effort and openness is what will drive this culture forward.

Unlike most CTFs or competitive programming challenges, the Binary Golf Grand Prix is more of a personal quest. There's no right or wrong answer to the question, and no right or wrong way to find the answer. 

Constraints are a breeding ground for innovation. When we challenge ourselves to find the smallest, weirdest, and most unlikely ways to achieve our goals, we will often figure out entirely new pathways that we can build upon in the future. It's our sincere hope that BGGP has made you think differently in some way.

If you have any questions, comments, or concerns, please contact us via [Twitter](https://twitter.com/binarygolf) or the [BGGP channel](https://discord.gg/qbMZN5QbQb) in the tmp.0ut Discord.

See you next year!

～ netspooky/BGA
