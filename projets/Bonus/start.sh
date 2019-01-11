#! /bin/bash
gnatmake -aI/Sources $1 -o exe
sleep 5
echo "TECHIO> terminal ./exe"
