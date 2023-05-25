#!/bin/bash
echo "Enter command: "
read -r cmd
$cmd >> /tmp/vamsi
vr=$(echo "$?")
if [ "$vr" = 0 ]
then
        echo "this command executed successfully"
else
        echo "this command syntax is wrong"
fi
