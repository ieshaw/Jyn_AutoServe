#!/bin/bash

#This file scp's a file to the server

cred_file=~/creds.txt
path_on_server=/home/ubuntu
counter=0

cred_file=~/creds.txt
counter=0

while read -r line; do
    name="$line"
    if [ $counter -eq 0 ];
    then
        echo "username is: - $name"
        username=$name
    elif [ $counter -eq 1 ];
    then
        echo "key location is: - $name"
        key_loc=$name
    elif [ $counter -eq 2 ];
    then
        echo "host name is: - $name"
        hostname=$name
    fi
    ((counter++))
done < "$cred_file"

echo "What is the home directory of this project?"
echo "Make sure it looks like /path/to/project/."
read file_path

#scp the folder
scp -r -i $key_loc $file_path $username@$hostname:$path_on_server
