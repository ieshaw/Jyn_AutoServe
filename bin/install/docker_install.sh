#!/bin/bash

which docker

if [ $? -eq 0 ]
then
    docker --version | grep "Docker version"
    if [ $? -eq 0 ]
    then
        echo "docker existing"
    else
        echo "install docker"
        sudo snap install docker
        sudo groupadd docker
        sudo usermod -aG docker ubuntu
    fi
else
    echo "install docker" >&2
    sudo snap install docker
    sudo groupadd docker
    sudo usermod -aG docker ubuntu
fi
