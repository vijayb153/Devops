#!/bin/bash/
UESERID=$(id -u)

if [ $UESERID -ne 0 ]
then
    echo "Error:: pls run as root"
    exit 1
else
    echo "you are with root access"
fi
dnf list installed mysql
if [ $? -ne 0 ]
then 
    echo "mysql not installed installing"
    dnf install mysql -y
    AVALIDATE $? mysql
else
    echo "msql i already installed ...nothing to do"
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