#!/bin/bash/
UESERID=$(id -u)

if [ $UESERID -ne 0 ]
then
    echo "Error:: pls run as root"
    exit 1
else
    echo "you are with root access"
fi
dnf install mylkjjsql -y

if [ $? -eq 0 ]
then 
    echo "mysql success"
else
    echo "failled instalation mysql"
fi
