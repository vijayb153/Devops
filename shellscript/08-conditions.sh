#!/bin/bash
Number=$1

# -lt less than
# -gt  greater than
# -eq   equal
# -ne  not equal

if [ $Number -lt 10 ]
then
    echo "given number:{$Number} is less than 10"
else
    echo "given number:{$Number} is morethan than 10"
fi