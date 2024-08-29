#!/bin/bash

NUMBER=$1   # need to pass the value as argument while running the script

# variable can be called in 2 ways --> $variable_name or ${variable_name}

if [ $NUMBER -gt 20 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "Given number: $NUMBER is greater than 20"
else
    echo "Given number: $NUMBER is less than or equal to 20"
fi        