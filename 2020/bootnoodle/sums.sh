forward=$(sha256sum bin/bootnoodle.bin | cut -d ' ' -f 1)
backward=$(perl -0777pe '$_=reverse $_'  bin/bootnoodle.bin | sha256sum | cut -d ' ' -f 1)

echo -ne "Forward:  "
echo $forward

echo -ne "Backward: "
echo $backward
echo ""
