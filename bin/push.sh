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

echo "What is your commit message?"
read message

../Jyn_AutoServe/bin/install/enter_server.sh << EOF
    rm -rf admin/
EOF
scp -r -i $key_loc $PWD $username@$hostname:admin/
../Jyn_AutoServe/bin/install/enter_server.sh << EOF
    cd admin/
    git add .
    git commit -m "$message"
EOF

../Jyn_AutoServe/bin/stop.sh
../Jyn_AutoServe/bin/start.sh
