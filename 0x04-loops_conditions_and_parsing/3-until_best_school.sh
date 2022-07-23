#!/usr/bin/env bash
#Displays "Best School" 10 times to stdout

index=0

until [ $index == 9 ]
do
	echo "Best School"
	((index++))
done
