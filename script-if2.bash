#!/bin/bash
echo "Enter commands: " 
cat > vamsi
a=`cat vamsi`
echo "Enter server names: "
cat > inventory
for i in `cat inventory`
do
ssh $i "$a"
done
