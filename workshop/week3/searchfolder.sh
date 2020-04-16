#!/bin/bash
#This script allows a user to view the contents of a folder

#read will be used to save the folder name into a variable called folder name
read -p "type a folder name:" folderName
#display the contents of the folder in the directory above
ls ../"$folderName"