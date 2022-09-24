#!/bin/bash

# put this into search path using     	export PATH=$PATH:/home/pi/Research/scripts
# verify that it is added to search	echo $PATH
# call this using                     	go.sh OR ./go.sh OR bash go.sh 

#user enters local date and time to set clock
echo Enter the date and time.  For example
echo Sep 16 18:00
read var
echo This is the datetime you entered $var
sudo date -s "$var"

#starts gc-to-aa.py
#the ampersand allows the python script to run in the background
cd
cd Research/python/astropy
python gc-to-aa.py &
echo Hit ENTER to return command line

#Opens data folder in a window
cd
cd Research/gr-radio_astro/data
/usr/bin/xdg-open .

#Starts NsfIntegrate24 script for data collection
cd
cd Research/gr-radio_astro/examples
python3 NsfIntegrate24.py
