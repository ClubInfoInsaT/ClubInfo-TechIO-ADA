#! /bin/bash
gnatmake -aI/Sources $1 -o exe
echo "TECHIO> terminal -i ./exe"


result=0
RUNNING=0
TERMINATED=0


while [ $TERMINATED -ne 1 ];do
	if [ $result -eq 2 ]
		then RUNNING=1
	else
		if [ $result -eq 1]
			then 
				if [ $RUNNING -eq 1 ]
					then TERMINATED=1
				fi
		fi
	fi
	sleep 0.1
done
