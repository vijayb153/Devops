#!/bin/bash/
UESERID=$(id -u)
R="\e[31m"
G="\e[32m"
B="\e[34m"
Y="\e[33m"
N="\e[0m"

install2()
{
if [ $1 -ne 0 ]
then
    echo -e "$R Error:: pls run as root $N"
    exit 1
else
    echo -e "$Y you are with root access $N"
fi
dnf list installed $2
if [ $? -ne 0 ]
then 
    echo -e "$Y mysql not $B installed installing $N"
    dnf install $2 -y
    AVALIDATE $? $2
else
    echo "$2 i already installed ...nothing to do"
fi

AVALIDATE ()
    {
    if [ $1 -eq 0 ]
    then 
        echo "$2 success"
    else
        echo "failled instalation $2"
        exit 1
    fi
    }
}

# install2 "$USERID" "mysql"

install2 "$USERID" $1