#!/bin/bash


# variable can be called in 2 ways --> $variable_name or ${variable_name}

echo "Please enter your username::"

read USERNAME #takes input in USERNAME variable

echo "Username entered is: $USERNAME"

echo "Please enter your Password::"

read -s Password

echo "Password is: $Password"