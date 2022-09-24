#!/bin/bash
echo "This shell script points to "
cd /home/david/Scripts
pwd
echo "From the directory, it runs the Python script, test.py"
python test.py

#NOTES
#create this file and use the .sh extension
#write the lines above. Make executable with $ chmod u+x test.sh
#from the Scripts directory, call the program with $ ./test.sh
#to run this shell script from any directory, add the folder to the .bashrc file
#then, from home directory, enter $ source .bashrc
#should be able to call the script using $ test.sh

#TODO
#is there a way to make the python script read and write to working directory 
#from which the shell script was called?
#or, do I need to create a dedicated directory for using files?
#or, have a list of directories to search?

