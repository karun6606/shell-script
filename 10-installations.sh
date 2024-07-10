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
if [$? -ne 0]
then
    echo "Installation of mysql.... failure"
    exit 1
else 
    echo "Installation of mysql.... sucess"
fi

dnf install tree -y
if [ $? -ne 0 ]
then
    echo "Installation of tree.... failure"
else
    echo "Installation of tree... sucess"
fi