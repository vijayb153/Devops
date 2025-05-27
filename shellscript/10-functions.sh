#!/bin/bash/
UESERID=$(id -u)
intall(){
if [ $UESERID -ne 0 ]
then
    echo "Error:: pls run as root"
    exit 1
else
    echo "you are with root access"
fi
dnf list installed $1
if [ $? -ne 0 ]
then 
    echo "mysql not installed installing"
    dnf install $1 -y
    AVALIDATE $? "$1"
else
    echo "$1 i already installed ...nothing to do"
fi
AVALIDATE (){
    if [ $1 -eq 0 ]
    then 
        echo "$2 success"
    else
        echo "failled instalation $2"
        exit 1
    fi
}
}