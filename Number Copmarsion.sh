#!/bin/bash

read -p "Please enter a number = " VAR1

if [ $VAR1 -eq 10 ] 
then
        echo "Your number is 10"
elif [ $VAR1 -gt 10 ]
then
        echo "Your number is greater 10"           
else [ $VAR1 -lt 10 ]
        echo "Your number is less 10"  
fi
