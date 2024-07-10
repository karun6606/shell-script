#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run with super user"
exit 1
else
echo "you are super user"
fi

dnf install mysql -y 
