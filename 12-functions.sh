#!/bin/bash

USERID=$(id -u) # # To run a command inside shell script --> $(command)

#variable can be called in 2 ways --> $variable_name or ${variable_name}
#echo "Root user id is: $USERID"

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi
}

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 is Failed"
    exit 1
else 
    echo "$2 is Success"
fi        
}

CHECK_ROOT

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git

VALIDATE $? "Listing Git"

# #"echo $?" it will tell you the state of previous command
# #0 --> Success
# #1-127 --> Failure

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it"
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git is already installed, nothing to do"
fi   

#########################################################################

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed, going to install it"
    dnf install mysql -y
    VALIDATE $? "Installing Mysql"
else
    echo "mysql is already installed, nothing to do"
fi 
