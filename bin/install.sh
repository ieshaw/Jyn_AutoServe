#!/bin/bash

echo "Make sure you run this from bin/"

./install/setup_ssh.sh
./install/scp_project.sh
./install/enter_server.sh << EOF
    Jyn_AutoServe/bin/install/docker_install.sh
EOF
