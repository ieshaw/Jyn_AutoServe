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

echo "What file/folder do you want on the server?"
read file_path

echo "Is this a folder, Y/N?"
read folder

if [ "$folder"=="Y" ];
then
    #scp the folder
    scp -r -i $key_loc $file_path $username@$hostname:$path_on_server
else
    #scp the file
    scp -i $key_loc $file_path $username@$hostname:$path_on_server
fi
