#!/usr/bin/env bash
#loops from 1 to 10 and displays special phrases for 4th, 8th iterations

index=0

while [ $index -lt 10 ]
do
	if [ $index -eq 4 ]
	then
		echo "bad luck"
	elif [ $index -eq 8 ]
	then
		echo "good luck"
	else
		echo "Best School"
	fi
	((index++))
done
