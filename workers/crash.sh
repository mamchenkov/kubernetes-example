#!/usr/bin/env bash

# Crash worker continuously outputs the random number.
# If random number is greater than 31000, then a crash
# is imititated.

while [ 1 ]
do
	NUMBER=$RANDOM
	echo $NUMBER
	if [ "$NUMBER" -gt "31000" ]
	then
		echo Crashing ... 
		exit 1
	fi
	sleep 1
done
