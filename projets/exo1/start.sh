#! /bin/bash

gnatmake -q hello_world.adb
sleep(10)
echo "TECHIO> terminal -i ./hello_world"
