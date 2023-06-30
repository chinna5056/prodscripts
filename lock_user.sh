#!/bin/bash
while read user
do
A=`passwd -S "$user"|awk '{print $2}'`
	if [ "$A" = PS ]
	then
		echo ""$user" passwd was active state(PS)"
	else
		echo ""$user" passwd was locked state(LK)"
	fi
done < userlist
