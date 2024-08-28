#!/bin/bash


echo "All variables passed to the script: $@"   # I want all the variables passed to the script
echo "Number of variables passed: $#"   # How many variables/args passed to the script
echo "Script name: $0"  # To run the script name
echo "Current working directory: $PWD"  # To know the current working directory
echo "Home directory of current user: $HOME"    # To know the Home directory of current user
echo "PID of the script executing now: $$"  # To find the Process execution ID which recently ran
sleep 100 & # To run the command in backgroud
echo "PID of last background command: $!"   # To see the process execution ID for last background command
