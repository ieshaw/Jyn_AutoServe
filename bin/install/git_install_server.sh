#!/bin/bash

which git

if [ $? -eq 0 ]
then
    echo "installing git"
    sudo apt-get install git-core
    sudo useradd git
    passwd git
else
    echo "install docker" >&2
    sudo snap install docker
    sudo groupadd docker
    sudo usermod -aG docker ubuntu
fi

sudo adduser jyn_admin
su git
cd
mkdir .ssh && chmod 700 .ssh
touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys
