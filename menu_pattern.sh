#!/bin/bash

echo "1.Pattern 1:"
echo "2.Add Single user"
echo "3.Add user in group"
echo "Enter your choice"
read ch

case $ch in
1)
let count=5

for ((i=0; i<count; i++))
do
    for ((j=0; j<i; j++))
    do
        echo -n "*"
    done
echo " "
done
;;
2)
echo "Enter user name : "
read suser

sudo useradd $suser
users-admin
;;

3)
echo "Enter user name to add in group : "
read guser

sudo adduser $guser
;;

esac