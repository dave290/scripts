#!/bin/bash
#user enters local date and time to set clock
echo Enter the date and time.  For example
echo Sep 16 18:00
read var
echo This is the datetime you entered $var
sudo date -s "$var"
