#!/bin/bash

userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $1F}')
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE() {
    if [ if $1 -ne 0 ]
    then
        echo "$2....Failure"
        exit 1
    
    else
        echo "$2....Sucess"
    fi
}

if [ $userid -ne 0 ]
then    
    echo "Run with super user"
    exit 1
else
    echo "You are super user"
fi


dnf install mysql1 -y &>>$LOGFILE
VALIDATE $? "Installaton of mysql"

dnf install tree -y &>>$LOGFILE
VALIDATE $? "Installaton of tree"

dnf install chrony -y &>>$LOGFILE
VALIDATE $? "Installaton of chrony"

dnf install gcc -y &>>$LOGFILE
VALIDATE $? "Installaton of gcc"

