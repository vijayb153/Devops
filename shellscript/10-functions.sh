#!/bin/bash/
UESERID=$(id -u)
install2 "$USERID" "mysql"
install2(){
if [ $1 -ne 0 ]
then
    echo "Error:: pls run as root"
    exit 1
else
    echo "you are with root access"
fi
dnf list installed $2
if [ $? -ne 0 ]
then 
    echo "mysql not installed installing"
    dnf install $2 -y
    AVALIDATE $? "$2"
else
    echo "$2 i already installed ...nothing to do"
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