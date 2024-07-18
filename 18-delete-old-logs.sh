#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs


if [ -d $SOURCE_DIRECTORY ]
then
    echo "Source directory exits"
else
    echo "Please create $SOURCE_DIRECTORY"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo "$FILES"

r