#!/bin/bash

#This function prints a given error

printError()

{

echo -e "\033[31mERROR:\033[0m $1"

}


getNumber()

{

read -p "please type a number between 1 and 100: " val

#while (( $val -ge 1 || $val -le 100 )); do
while [[ $val -ge 1 ]] && [[ $val -le 100 ]] 
do 
#printError "Input must be between mentioned numbers"

#Eval Conditions
if [ $val -lt 42 ]
then
	echo "Too Low!"
	read -p "please type a number between 1 and 100: " val
elif [ $val -gt 42 ]
then
        echo "Too High!"
	read -p "please type a number between 1 and 100: " val
elif [ $val -eq 42 ]
then
        echo "Correct!"
	exit 0
	break
fi
done



}
	
echo "this is the start of the script"
getNumber 

