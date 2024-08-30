#!/bin/bash


# variable can be called in 2 ways --> $variable_name or ${variable_name}

# echo "Please enter your username::"
# read USERNAME #takes input in USERNAME variable
# echo "Username entered is: $USERNAME"
# echo "Please enter your Password::"
# read -s Password
# echo "Password is: $Password"

# echo "Please enter your Amazon username::"
# read -s USERNAME #takes input in USERNAME variable
# echo "Username entered is: $USERNAME"
# echo "Please enter your Amazon Password::"
# read -s Password
# echo "Password is: $Password"


# Read Password
echo -n Password: 
read -s password
echo
# Run Command
echo $password
