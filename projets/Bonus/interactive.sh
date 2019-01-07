#!/bin/bash
gnatmake -aI/Sources mission1.adb -o exe
echo "TECHIO> terminal -i ./exe"
sleep 10
