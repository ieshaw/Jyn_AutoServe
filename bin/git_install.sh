#!/bin/bash

echo "Make sure you run this from bin/"

./install/dev_scp_project.sh
./install/enter_server.sh << EOF
    mkdir admin
    cd admin
    git init 
    cp ../Jyn_AutoServe/bin/install/ps.sh .
    git add .
    git commit -m "Initial Commit"
EOF
./install/git_setup.sh
