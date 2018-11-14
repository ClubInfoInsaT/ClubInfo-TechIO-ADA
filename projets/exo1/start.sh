#! /bin/bash

gnatmake hello_world.adb
gnatmake hello_world_correction.adb

res=`./hello_world`
correct=`./hello_world_correction`
if [ "$res" = "$correct" ]
then
	return 0
else
	echo 1
fi
