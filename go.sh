#!/bin/bash

# put this into search path using     	export PATH=$PATH:/home/pi/Research/scripts
# verify that it is added to search	echo $PATH
# call this using                     	go.sh 

#zoom in the terminal window
#need to install xdotool, $ get-apt install xdotool
xdotool key Ctrl+plus
xdotool key Ctrl+plus
xdotool key Ctrl+plus

echo Welcome, Earthling!
sleep 2
echo Be sure to update the Astropy database, then disconnect from WiFi
echo Delete files hot.hot and cold.ast from the Examples folder
echo If I am using my home, ASUS laptop, I need to INCLUDE the last lines in this file.
echo Connect using 192.168.1.205
echo If I am using my school HP Elitebook, I need to COMMENT OUT those lines.
echo Connect using 192.168.1.96
echo Be sure correct DST/CST is set in relevant Astropy programs
echo Hit ENTER when ready to proceed
read variable

#user enters local date and time to set clock
echo Enter the date and time.  For example
echo Sep 16 18:00
read var
echo This is the datetime you entered $var
sudo date -s "$var"

sleep 2

#open a new terminal window. User navigates to data directory
xdotool key Ctrl+shift+N

#starts gc-to-aa.py
#the ampersand allows the python script to run in the background
cd
cd Research/python/astropy
python gc-to-aa.py &

sleep 2

#Opens data folder and terminal window
cd
cd Research/gr-radio_astro/data
/usr/bin/xdg-open .

sleep 2

#Starts NsfIntegrate24 script for data collection
cd
cd Research/gr-radio_astro/examples
python3 NsfIntegrate24.py
