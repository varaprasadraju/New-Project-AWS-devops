#!/bin/bash

USERID=$(id -u) # # To run a command inside shell script --> $(command)
#variable can be called in 2 ways --> $variable_name or ${variable_name}
#echo "Root user id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git

# #"echo $?" it will tell you the state of previous command/Exit status
# #0 --> Success
# #1-127 --> Failure

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it"
    dnf install git -y
if [ $? -ne 0 ]
then 
    echo "Git installation is not success, check it"
    exit 1
else
    echo "Git installation is success"
fi
else
    echo "Git is already installed, nothing to do"
fi

# #########################################################################

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed, going to install it"
    dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "mysql installation is failure, please check"
    exit 1
else
    echo "mysql installation is success"
fi
else
    echo "mysql is already installed, nothing to do"
fi
