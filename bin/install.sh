#!/bin/bash

echo "Make sure you run this from bin/"

./install/setup_ssh.sh
./install/scp_project.sh
./install/enter_server.sh << EOF
    Jyn_AutoServe/bin/install/docker_install.sh
    mkdir admin
    cd admin
    git init 
    cp ../Jyn_AutoServe/bin/install/ps.sh .
    git add .
    git commit -m "Initial Commit"
EOF
