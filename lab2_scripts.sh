#!/bin/bash
# Authors : Nicholas LaMonica
# Date: 1/31/2019
#lab 2 scripts

#Problem 1 Code:
#get filename regex_practice.txt
echo "Enter a file name: "
read fileName
echo "File name you entered: $fileName"
#get regex
echo "Enter regex code: "
read regEx
echo "Regex code you entered: $regEx"

#Problem 2 Code:
grep -E $regEx $fileName

#problem 3 Code:
#part 1: regex expression for phone number
grep -E -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt

#part 2: number of emails in txt file
grep -E -c "[0-9a-zA-Z-]+@[a-z]+\.(com)" regex_practice.txt

#part3: output too phone_results.txt
grep -E "(303)-[0-9]{3}-[0-9]{4}" regex_practice.txt  > phone_results.txt

#part4: output too email_reults.txt
grep -E "[0-9a-zA-Z-]+@geocities.com" regex_practice.txt > email_results.txt

#part5: take regex as a command line arguement and output to command_results.txt
grep -E $1 $2 > command_results.txt
