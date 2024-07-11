#!/bin/bash

for i in (1..20)
do
    echo $i
done


colors="Red Yellow Green"
for i in $colors
do
    echo $i
done


for i in "Red Yellow Green"
do 
    echo $i
done
