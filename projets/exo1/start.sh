#! /bin/bash

gnatmake hello_world.adb
gnatmake hello_world_correction.adb

res=`./hello_world`
correct=`./hello_world_correction`
if [ "$res" = "$correct" ]
then
	success true
else
	success false
fi
