#!/bin/bash
read -p "What is your name? " name
test $name = 'Rob' && echo "Hello Rob" exit 0
echo "Your name isn't Rob"; exit 1