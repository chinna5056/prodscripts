#!/bin/bash
echo "Enter min value: "
read min
echo "Enter hours value: "
read hrs
echo "Enter dom value: "
read dom
echo "Enter moy value: "
read moy
echo "Enter dow value: "
read dow
echo "Enter schedule job: "
read cmd
echo "Enter user name: "
read usr
a=`id -a $usr`
if [ "$?" == 0 ]
then 
	echo "$min	$hrs	$dom	$moy	$dow	$cmd" >> /var/spool/cron/$usr
else
	echo "user $usr not available"
fi
