#!/bin/bash

course=Devops

echo "Before calling other script, course: $course"
echo "PID of current script:$$"

./16-other-script.sh 

#source ./16-other-script.sh

echo "Afetr calling other script:$course"


