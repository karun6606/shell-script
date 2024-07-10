#!/bin/bash

echo "All variables:$@"
echo "No of variables passed : $#"
echo "Script name : $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "which user is running the script: $USER"
echo "Hostname: $HOSTNAME"
echo "process id of the current shell sript: $$""
echo "Process ID of background script: $!"