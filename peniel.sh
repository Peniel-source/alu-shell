#!/bin/sh

#Prompt user to input a directory name and store input as 'u_input'.
echo "Enter a directory name: " 
read u_input

#Creating two variables to store specific files names.
file1="submission1.txt"
file2="submission2.txt"

#Create the two files if the directory stated by the user exists.
if [ -d "$u_input" ]; then
	echo "Directory exists. Creating two files ..."
	touch $u_input/{$file1,$file2}
	echo "Done"

#If the directory stated by the user doesn't exist, create it and create files as well
elif [ ! -d "$u_input" ]; then
	echo "Directory does not exist. Creating directory and two files ..."
	mkdir $u_input 
	touch $u_input/{$file1,$file2}
	echo "Done"

#If directory name stated by the user matches an existing filename, print an error message.
elif [ -f "$u_input" ]; then
	echo "Error! A file exists with that name."

#Nothing could really go wrong but if something does, print an error message.
else
	echo "Cannot create directory."
fi



