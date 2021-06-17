#!/bin/bash

nasm -f bin ns.bggp.asm -o ns.bggp
chmod +x ns.bggp
echo "Executing initial binary..."
./ns.bggp
echo ""
xxd ns.bggp
echo ""
echo "Reversing..."
perl -0777pe '$_=reverse $_'  ns.bggp > ns.bggp.R
chmod +x ns.bggp.R
echo "Executing binary in reverse..."
./ns.bggp.R
echo ""
xxd ns.bggp.R
echo ""
echo "Comparing hashes..."
sha1sum ns.bggp
sha1sum ns.bggp.R