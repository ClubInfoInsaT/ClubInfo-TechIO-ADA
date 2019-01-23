#! /bin/bash
gnatmake -aI/Sources $1 -o exe
echo "TECHIO> terminal"
sleep 10
./exe
