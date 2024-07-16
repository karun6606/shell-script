#!/bin/bash

Course=Devops

echo "Before calling other script, course: $Course"
echo "PID of current script:$$"

./16-other-script.sh 

#source ./16-other-script.sh

echo "Afetr calling other script:$Course"


