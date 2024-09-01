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

CHECK_ROOT