#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ $? -eq 0 ]
then
    echo "Source directory exits"
else
    mkdir /tmp/app-logs
fi

find 