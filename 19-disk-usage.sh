#!/bin/bash
 
 DISK_USAGE=$(df -hT |grep xfs)
 DISK_THRESOLD=6


 while IFS= read -r line
 do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESOLD ]
    then
        echo "$FOLDER is more than $DISK_THRESOLD current usage:$USAGE"

 done <<< $DISK_USAGE





