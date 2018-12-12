#! /bin/bash

gnatmake -q hello_world.adb
echo "TECHIO> terminal -u -i ./hello_world"
