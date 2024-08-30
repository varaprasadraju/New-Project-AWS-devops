#!/bin/bash


# variable can be called in 2 ways --> $variable_name or ${variable_name}

# echo "Please enter your username::"
# read USERNAME #takes input in USERNAME variable
# echo "Username entered is: $USERNAME"
# echo "Please enter your Password::"
# read -s Password
# echo "Password is: $Password"

echo "Please enter your Amazon username::"
read -s -p USERNAME #takes input in USERNAME variable
echo "Username entered is: $USERNAME"
echo "Please enter your Amazon Password::"
read -s -p Password
echo "Password is: $Password"


# Read Password
# read -s -p "Password: " password
