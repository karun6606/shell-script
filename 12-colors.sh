#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $1F}')
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R='\e[31m'
G='\e[32m'
N='\e[0m'

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.... $R Failure $N"
        exit 1
    else
        echo -e "$2....$G Sucess $N"
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

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installation of docker"