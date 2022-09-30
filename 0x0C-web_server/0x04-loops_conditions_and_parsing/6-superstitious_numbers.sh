#!/usr/bin/env bash
#Displays numbers from 1 to 20
# displays 4 and then "bad luck from China" at 4th iteration
# displays 9 and then "bad luck from Japan" for the 9th loop iteration
# displays 17 and then "bad luck from Italy" at the 17th loop iteration

counter=1

while [ $counter -le 20 ]
do
	echo "$counter"
	case $counter in
	   "4") echo "bad luck from China";;
	   "9") echo "bad luck from Japan";;
	   "17") echo "bad luck from Italy";;
	 esac
	(( counter++ ))
done
