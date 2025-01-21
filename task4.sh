#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "You should provide two arguments: temperature and conversion (C or F)."
    exit 1
fi

temp=$1
conv=$2

if [[ "$temp" =~ ^-?[0-9]+$ ]]; then
	if [[ "$conv" == "C" || "$conv" == "c" ]]; then
		Fahrenheit=$(( ($temp * 9 / 5) + 32 ))
		echo "$temp C is equal to $Fahrenheit F"
	elif [[ "$conv" == "F" || "$conv" == "f" ]]; then
		Celsius=$(( ($temp - 32 ) * 5 /9 ))
                echo "$temp F is equal to $Celsius C"
	else
		echo "Invalid conversion please enter C for Celsius or F for Fahrenheit"
		exit 2
	fi



else
	echo "Enter a number"
	exit 3
fi
