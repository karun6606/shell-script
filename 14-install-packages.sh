#!/bin/bash
userid=$(id-u)

if [ $userid -ne 0 ]
then    
    echo "Run with super user"
    exit 1
else
    echo "You are super user"

dnf install mysql -y 
if [ $? -ne 0 ]
then
    echo "Instalation of mysql....Failure"
else
    echo "Installation of mysql....Sucess"
fi

dnf install tree -y 
if [ $? -ne 0 ]
then
    echo "Instalation of tree....Failure"
else
    echo "Installation of tree....Sucess"
fi

dnf install chrony -y
if [ $? -ne 0 ]
then
    echo "Instalation of chrony....Failure"
else
    echo "Installation of chrony....Sucess"
fi

dnf install gcc -y
if [ $? -ne 0 ]
then
    echo "Instalation of gcc....Failure"
else
    echo "Installation of gcc....Sucess"
fi

