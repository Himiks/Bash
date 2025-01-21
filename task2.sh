#!/bin/bash

Path=$1
Days=$2

if [ -d "$Path" ]; then
	echo "The list of all files that were modified over the last $Days days: "
	for file in $(find "$Path" -type f -mtime -"$Days"); do
		echo "Files modified over the last $Days days: $file"
	done
else
	echo "Directory doesn't exist"
	exit 1
fi
