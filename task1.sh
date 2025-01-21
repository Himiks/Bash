#!/bin/bash
Path=$1

if [ -d "$Path" ]; then
	echo "The size of the directory is "
	du -sh $Path
else
	echo "The directory path doesn't exist"
	exit 1
fi
