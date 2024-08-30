#!/bin/bash

NUMBER1=$1  # need to pass values as arguments for the below variables while executing this script
NUMBER2=$2  # enter/pass the values while running the script

# variable can be called in 2 ways --> $variable_name or ${variable_name}

SUM=$(($NUMBER1+$NUMBER2))

echo "Total of $NUMBER1 and $NUMBER2 is: $SUM"