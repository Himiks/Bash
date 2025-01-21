#!/bin/bash
if [ "$#" -gt 0 ]; then
	bkdir="backup"
	if [ ! -d "$bkdir" ]; then
		mkdir "$bkdir"
	fi

	for dir in "$@"; do
		if [ -d "$dir" ]; then
			bkpath="$bkdir/$(basename "$dir")"
			cp -r "$dir" "$bkpath"
			if [ $? -ne 0 ]; then
				echo "Failed to back up"
			else
				echo "Success"
			fi
		else
			echo "Directory doesnt exist "
		fi
	done
else
	echo "Enter at least one directory"
	exit 1 
fi

