#!/usr/bin/env bash

echo "Welcome to the Guessing game."
echo ""
num1=$(ls -al | wc -l)

sub () {
var=`expr $num1 - $1`
}

read -p "How many files are in the directory? " num2
sub $num2

while [[ $num1 -ne $num2 ]]
do
        if [[ $var -lt 0 ]]
        then
                echo "Your guess to too high. Try again."
                read num2
		sub $num2
        elif [[ $var -gt 0 ]]
        then
                echo "Your guess to too low. Try again."
                read num2
		sub $num2
        elif [[ $var -eq 0 ]]
        then
                echo ""
        fi
done
echo "Congratulations! Your answer is correct."
