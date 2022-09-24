#! /bin/bash

echo What is your name?
read name

user=$(whoami)
whereami=$(pwd)
date=$(date)

echo Hiya $name
sleep 1
echo You are logged in as $user
sleep 1
echo You are in the directory $whereami
sleep 1
echo The date and time are $date
sleep 1
echo These are the files in this folder
sleep 1
ls -l

