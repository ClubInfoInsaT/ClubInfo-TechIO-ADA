#! /bin/bash
echo "TECHIO> terminal " && gnatmake -aI/Sources $1 -o exe && ./exe
