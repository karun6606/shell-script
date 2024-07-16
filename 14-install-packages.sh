#!/bin/bash

userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $1F}')
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $userid -ne 0 ]
then    
    echo "Run with super user"
    exit 1
else
    echo "You are super user"
fi

for i in $@ 
do
    echo pakage to install:$i
    dnf list installed  $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i Already installed....$Y Skipping $N"
       
    else
         dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installation of $i"
        
    fi
done

VALIDATE() {

    if [ $1 -ne 0 ]
    then
        echo -e "$2.... $R Failure $N"
        exit 1
        else
        echo -e "$2.... $G Sucess $N"
    fi
}





