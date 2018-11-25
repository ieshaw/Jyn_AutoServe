#!/bin/bash

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

#Get out of the Jyn_AutoServe directory
#Avoiding git issues
#cd ../..
#mkdir admin
#cd admin
#git init 
#cp ../Jyn_AutoServe/bin/install/ps.sh .
#git add .
#git commit -m "Initial Commit"
#scp -r -i $key_loc $PWD $username@$hostname:$path_on_server
#TODO: Decide to keep path_on_server
#scp -r -i $key_loc $PWD $username@$hostname:.
cd ../..
ssh-agent bash -c 'ssh-add $key_loc; git clone $username@$hostname:admin/'
cd admin/
#GIT_SSH_COMMAND='ssh -i ~/.ssh/nva.pem' git clone $username@$hostname:admin/
echo "Hello Jyn" > hello.txt
git add .
git commit -m "Second Commit"
ssh-agent bash -c 'ssh-add $key_loc; git push origin master'
#GIT_SSH_COMMAND='ssh -i ~/.ssh/nva.pem' git push origin master
