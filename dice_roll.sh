#!/bin/bash/

read -p "Enter number of rolls: " Roll_Num
read -p "Enter minimum value:" Min_Roll
read -p "Enter maximum value:" Max_Roll

Diff=$((Max_Roll-Min_Roll+1))

if [ "$Min_Roll"-le"$Max_Roll" ]; then
	for ((i=1; i<=Roll_Num; i++)); do
		Random_Num=$((RANDOM % Diff + Min_Roll))
		echo "$Random_Num"
	done
else
	echo "Minimum value cannot be more than Max value."
fi
