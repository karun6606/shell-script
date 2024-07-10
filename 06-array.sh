#!/bin/bash

fruits=("Apple" "Orange" "Mango" "Grapes")

echo "${fruits[0]}"
echo "${fruits[1]}"
echo "${fruits[@]}"
echo "${fruits[*]}"
echo "${fruits[@]:1}"
echo "${fruits[@]:2:3}"
echo "${#fruits[@]}"
