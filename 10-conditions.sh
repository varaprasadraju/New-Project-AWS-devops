#!/bin/bash

NUMBER=$1   # need to pass the value as argument while running the script
NUMBER=$2

# variable can be called in 2 ways --> $variable_name or ${variable_name}

if [ $NUMBER1 -gt 20 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "Given number: $NUMBER1 is greater than 20"
else
    echo "Given number: $NUMBER1 is less than or equal to 20"
fi

if [ $NUMBER2 -ge 10 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "Given number: $NUMBER2 is greater than 10"
else
    echo "Given number: $NUMBER2 is less than or equal to 10"
fi