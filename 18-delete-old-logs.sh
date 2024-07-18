#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs


if [ -d $SOURCE_DIRECTORY ]
then
    echo "Source directory exits"
else
    mkdir /tmp/app-logs
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do

echo "Deleting line:$line"

done <<< $FILES





