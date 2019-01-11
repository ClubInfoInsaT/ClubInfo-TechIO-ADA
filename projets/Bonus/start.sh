#! /bin/bash
gnatmake -aI/Sources $1 -o exe
sleep 2
echo "TECHIO> terminal ./exe"
