#!/bin/bash
#prompt the user to type a folder name
read -p "type a folder name:" folderName
filepath=`find ~ -name "$folderName"`
echo $filepath
#prompt the user to enter a password
read -s -p "enter a password:" password
file="$filepath/secret.txt"
if [ -f "$file" ]; then
echo "$password" >> "$file"
else
echo "$password" > secret.txt
mv secret.txt "$filepath"
fi