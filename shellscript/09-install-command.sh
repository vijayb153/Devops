#!/bin/bash/
UESERID=$(id -u)

if [ $UESERID -ne 0 ]
then
    echo "Error:: pls run as root"
    exit 1
else
    echo "you are with root access"
fi
echo "install mysql -y"
