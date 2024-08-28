#!/bin/bash

NUMBER=$1   # need to pass the value as argument while running the script

if [ $NUMBER -gt 20 ] #gt, lt, eq, -ne,
then
    echo "Given number: $NUMBER is greater than 20"
else
    echo "Given number: $NUMBER is less than 20"
fi        