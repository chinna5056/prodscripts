#!/bin/bash
echo "Enter username: "
read -r usr
id -a "$usr" >> /tmp/vamsi
vr=$(echo "$?")
if [ "$vr" = 0 ]
then
        echo "user already exists"
else
        echo "user not exits so creating user"
        echo "select group [bat22a/bat23a/bat24a]: "
        read -r grp
        cat < /etc/group|grep -i "$grp"
        vv=$(echo "$?")
        if [ "$vv" = 1 ]
        then
                groupadd "$grp"
                useradd -g "$grp" -d /home/"$usr" -s /bin/bash "$usr"
                echo "creating passwd for a user"
                echo "$usr"|passwd --stdin "$usr"
                echo "user details"
                id -a "$usr"
        else
                useradd -g "$grp" -d /home/"$usr" -s /bin/bash "$usr"
                echo "creating passwd for a user"
                echo "$usr"|passwd --stdin "$usr"
                echo "user details"
                id -a "$usr"
        fi
fi
