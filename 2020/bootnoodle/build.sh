mkdir bin 2>/dev/null

nasm -f bin -o bin/bootnoodle.bin src/bootnoodle.asm
dd if=bin/bootnoodle.bin of=bin/tmp.bin bs=1 count=256
rm bin/bootnoodle.bin
perl -0777pe '$_=reverse $_'  bin/tmp.bin > bin/tmp2.bin
cat bin/tmp.bin bin/tmp2.bin > bin/bootnoodle.bin
rm bin/tmp*
