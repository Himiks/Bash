#!/bin/bash


display_dashboard(){
echo "System Resource Usage: "
echo 
echo "CPU: "
top -bn1 | grep "Cpu(s)"
echo "-----------------------"
echo "Memory Usage: "
echo 
free -h
echo "-----------------------"
echo "Disk Usage: "
echo
df -h
echo "-----------------------"
echo "Network usage: "
echo 
ip -s link
echo "-----------------------"

echo "Press 's' to save a snapshot"


}


while true; do
	display_dashboard

	read -t 5 -n 1 key

	if [[ $key == "s" ]]; then
		snapshotf="snapshot_$(date +'%Y%m%d').txt"
		{
			echo "System Resource Usage: "
			echo
			echo "CPU: "
			top -bn1 | grep "Cpu(s)"
			echo "-----------------------"
			echo "Memory Usage: "
			echo
			free -h
			echo "-----------------------"
			echo "Disk Usage: "
			echo
			df -h
			echo "-----------------------"
			echo "Network usage: "
			echo
			ip -s link
			echo "-----------------------"

		} > "$snapshotf"
	fi
	sleep 8
done
