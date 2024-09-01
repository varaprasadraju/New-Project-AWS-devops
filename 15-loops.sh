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

# sh 15 loops.sh Git Mysql Postfix Nginx
for package in $@   # refere to all arguments passed to it
do
    dnf list installed $package
    if [ $? -ne 0 ]
then
    echo "$package is not installed, going to install it"
    dnf install $package -y
    VALIDATE $? "Installing $package"
else
    echo "$package is already installed, nothing to do"
fi 
done
