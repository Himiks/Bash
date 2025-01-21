#!/bin/bash


if [ "$#" -eq 2 ]; then
	file=$1
	word=$2

	if [ -f "$file" ];then
	       count=0
	       while read -r line; do
	       		for fword in $line; do
				if [ "$fword" == "$word" ];then
					((count++))
				fi
			done
		done < "$file"
       	else
		echo "Path should be to file"
		exit 1
	fi		

else
	echo "The number of arguments should be equal 2"
	exit 2
fi	
echo "The word $word appears $count times in the file $file "
