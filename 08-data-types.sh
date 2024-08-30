#!/bin/bash

NUMBER1=$1  # need to pass values as arguments for the below variables while executing this script
NUMBER2=$2  # enter/pass the values while running the script
NUMBER2=$3

# variable can be called in 2 ways --> $variable_name or ${variable_name}

SUM=$(($NUMBER1+$NUMBER2+$NUMBER3))

echo "Total of $NUMBER1 and $NUMBER2 and $NUMBER3 is = $SUM"