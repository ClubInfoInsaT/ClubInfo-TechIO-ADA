#! /bin/bash
gnatmake -aI/Sources $1 -o insa-ada-runner
echo "TECHIO> terminal -i ./insa-ada-runner"

running=0
terminated=0

while [ $terminated -ne 1 ];do
	res=`ps -ef |grep "insa-ada-runner"|wc -l`
	if [ $res -gt 1 ]
		then running=1
	else
		if [ $res -eq 1 ]
		then
			if [ $running -eq 1 ]
				then terminated=1
			fi	
		fi
	fi
	sleep 1
done
