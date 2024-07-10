#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....Failure"
        exit 1
    else
        echo "$2....Sucess"
    fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run with super user"
    exit 1
else
    echo "you are super user"
fi

dnf install mysqll -y 
VALIDATE $? Installation of Mysql

dnf install tree -y
VALIDATE $? Installation of Tree