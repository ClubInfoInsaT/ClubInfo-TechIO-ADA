#! /bin/bash
gnatmake -aI/Sources $1 -o exe
echo "TECHIO> terminal -i ./exe"
sleep 10
