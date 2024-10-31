#!/bin/bash

for ((i=1; i<=20; i++))
do
           read -p "Enter $i number = " VAR

           if [ $i -eq 1 ] 
           then 
                   MAX=$VAR
                   MIN=$VAR
           fi

           if [ $VAR -gt $MAX ]
           then
                   MAX=$VAR
           elif [ $VAR -lt $MIN ]
           then
                   MIN=$VAR
           fi
done 
echo "Max number is $MAX"
echo "Min number is $MIN"
