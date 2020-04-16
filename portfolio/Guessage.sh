#!/bin/bash
#Generate a random number
age=$((20+RANDOM%70))
#Prompt the user for a number and save it into
#the variable 'number'
read -p "Enter a number" number
#While the user's number doesn't equal the generated number,
#enter a loop
while [ $number -ne $age ]
do
#Test if the user's number is less than the generated number
if [ $number -lt $age ]; then
echo "number is too low"
#Test if the user's number is greater than the generated number
elif [ $number -gt $age ]; then
echo "number is too high"
fi
read -p "Enter a number" number
done
#If the user got the correct answer, output "correct!"
echo "correct!"
exit 0
