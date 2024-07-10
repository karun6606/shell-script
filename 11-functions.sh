#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $1F}')
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installation of Mysql" 

dnf install tree -y &>>$LOGFILE
VALIDATE $? "Installation of Tree"