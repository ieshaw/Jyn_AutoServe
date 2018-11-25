#!/bin/bash

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

cd ../admin
git init
git add .
git commit -m 'initial commit'
git remote add origin ssh $key_loc jyn_admin@$hostname 
git push origin master
