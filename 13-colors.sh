#!/bin/bash

# echo "Hello World"              #default colored text
# echo -e "\e[31m Hello World"    #prints the word wih Red Color
# echo -e "\e[32m Hello World"    #prints the word wih Green Color
# echo -e "\e[33m Hello World"    #prints the word wih Yellow Color
# echo -e "\e[34m Hello World"    #prints the colors and so on..

USERID=$(id -u) # # To run a command inside shell script --> $(command)
R="\e[31m"
G="\e[32m"
N="\e[0m"

#variable can be called in 2 ways --> $variable_name or ${variable_name}
#echo "Root user id is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is: $R Fail $N"
        exit 1
    else
        echo -e "$2 is: $G Success $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git

#"echo $?" it will tell you the state of previous command
#0 --> Success
#1-127 --> Failure

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