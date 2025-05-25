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
    if [ $? -eq 0 ]
    then 
        echo "mysql success"
    else
        echo "failled instalation mysql"
        exit 1
    fi
else
    echo "msql i already installed ...nothing to do"
    exit 1
fi
