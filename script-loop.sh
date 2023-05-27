#!/bin/bash
#cat > /tmp/inventory
while read name
do
useradd $name
echo "$name"|passwd --stdin $name
done < /tmp/inventory
