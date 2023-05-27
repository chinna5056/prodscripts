#!/bin/bash
echo "Enter command: "
read cmd
a=`$cmd`
if [[ "$?" == 0 ]]
then
	echo "command successfull, great"
else
	echo "command failed tray again"
fi
