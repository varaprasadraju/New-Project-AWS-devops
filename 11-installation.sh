#!/bin/bash

USERID=$(id -u) # # To run a command inside shell script --> $(command)

# variable can be called in 2 ways --> $variable_name or ${variable_name}

# echo "Root user id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
fi