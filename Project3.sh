#! /usr/bin/bash

echo "Enter the value of X:"
read X
echo "Enter the value of Y:"
read Y

if (( "$X" < "$Y"))
	then
		echo "X is less than Y"
elif (( "$X" == "$Y"))
	then
		echo "X is equal Y"
elif (( "$X" > "$Y"))
	then
		echo "X is greater than Y"	
fi
