#! /bin/bash

gnatmake -q hello_world.adb
gnatmake -q hello_world_correction.adb

res=`./hello_world`
correct=`./hello_world_correction`
rm *.o *.ali hello_world hello_world_correction
if [ "$res" = "$correct" ]
then
	echo "TECHIO> success true"
else
	echo "TECHIO> success false"
fi
echo "$res"
