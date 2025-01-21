#!/bin/bash


if [ "$#" -ne 2 ]; then
	echo "Wrong usage, provide two numbers range"
	exit 1
fi


arg1=$1
arg2=$2

R=$((arg1 * arg2 - 1))

echo "Welcome to number guessing game"
echo "Enter a number and try to guess mine"
echo "Enter your number :"
read N

while [ "$N" -ne "$R" ]; do
	if [ "$N" -lt "$R" ]; then
		echo "Too Small!!"
	else 
		echo "Too Big!!"
	fi

	echo "Enter your number :"
	read N
done

echo "You win!!"
