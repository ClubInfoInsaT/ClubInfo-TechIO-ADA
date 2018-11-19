#! /bin/bash

gnatmake -q hello_world.adb
gnatmake -q hello_world_correction.adb

./hello_world
