#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

LOGS_FOLDER="/var/log/shell-script"
USERID=$(id -u) # To run a command inside shell script --> $(command) # echo "Root user id is: $USERID"
                
CHECK_ROOT(){
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges" &>>$LOG_FILE
    exit 1
fi
}

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 is Failed" &>>$LOG_FILE
    exit 1
else 
    echo "$2 is Success" &>>$LOG_FILE
fi        
}

USAGE(){
    echo -e "USAGE:: sudo sh 16-redirectors.sh package1 package2 ..."
    exit 1
}

CHECK_ROOT

if [ $# -eq 0 ]
then
    USAGE
fi

# sh 15 loops.sh Git Mysql Postfix Nginx
for package in $@   # refere to all arguments passed to it
do
    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]
then
    echo "$package is not installed, going to install it" &>>$LOG_FILE
    dnf install $package -y &>>$LOG_FILE
    VALIDATE $? "Installing $package" &>>$LOG_FILE
else
    echo "$package is already installed, nothing to do" &>>$LOG_FILE
fi 
done