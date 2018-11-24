#!/bin/bash

cred_file=~/creds.txt

# This takes user input to setup the ssh connection to the intended server

echo "This part is to help setup the ssh connection"

echo "What is your username on this server?"
read username

echo "Where on this computer is your key for that server?"
read key_loc

echo "What is the hostname?"
read hostname

#Do SSH check to ensure valid

ssh -q -i $key_loc $username@$hostname exit

if [ $? -eq 0 ];
then
    echo "SSH Credentials Valid."
    echo "$username" > "$cred_file"
    echo "$key_loc" >> "$cred_file"
    echo "$hostname" >> "$cred_file"
else
    echo "SSH Unsuccessful. Credentials Invalid."
    echo "Try again"
fi

