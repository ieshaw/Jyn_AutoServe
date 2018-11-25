#!/bin/bash

echo "Make sure you run this from bin/"

./install/setup_ssh.sh
./install/scp_project.sh
./install/enter_server.sh << EOF
    Jyn_AutoServe/bin/install/docker_install.sh
    Jyn_AutoServe/bin/install/git_install_server.sh
EOF
./install/ssh_key_gen.exp
./install/git_setup_server.sh
./install/enter_server.sh << EOF
    cd Jyn_AutoServe/admin/
    git init
EOF
./install/git_setup_local.sh
