#! /usr/bin/bash

echo "How many random numbers do you want to generate?:"
read N
count=1
sum=0

# Check the constraint for N (1 <= N <= 500)
if (( "$N" >= 1 )) && (( "$N" <= 500 ))
then 
	count=1
	sum=0
	echo "Enter Numbers: "
	while [ $count -le $N ] 
	do
		read x # Inserting the elements(s)
		sum=$((sum + x))
		count=$((count + 1))
	done
	if (( "$x" >= -10000 )) && (( "$x" <= 10000 ))
	# Checking the constraint for the element(s)
	then
		echo "x is within range"
		average=$(echo $sum/$N | bc -l) # Calculating the average
		echo $average 
		printf '%0.3f' "$average" # average in 3 decimal places
	else
		echo "x is out of range"	
	fi
else
	echo "N is out of range"
fi
 
