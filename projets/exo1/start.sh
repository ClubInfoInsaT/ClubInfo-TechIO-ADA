#! /bin/bash

ls / && ls /Sources

gnatmake -Ia/Sources hello_world.adb
./hello_world
