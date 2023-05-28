#!/bin/bash
echo "Enter A value: "
read a
echo "Enter B value: "
read b
if [ $a == $b ]
then 
	echo "a equal to b"
elif [ $a -lt $b ]
then 
	echo "a less than b"
elif [ $a -gt $b ]
then 
	echo "a greater than b"
fi
