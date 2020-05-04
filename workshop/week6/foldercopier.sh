#!/bin/bash
read -p "type the name of the folder you would like to copy: " folderName
echo "$folderName"
#if the name is a valid directory 
if [ -d "$folderName" ]; then
#copy it to a new location
read -p "type the name of the destination folder: " newFolderName
if [ -d "$newFolderName" ]; then
echo "folder already exists"
exit 0
else
cp -r "$folderName" "$newFolderName"
fi
else
#otherwise, print an error
echo "I couldn't find that folder"
fi