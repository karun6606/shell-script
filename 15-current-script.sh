#!/bin/bash

Course=Devops

echo "calling before script:$Course"
echo "PID of current script:$$"

./16-other-script.sh 

echo "calling after script:$Course"


