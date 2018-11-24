#!/bin/bash

./install/setup_ssh.sh
./install/scp_project.sh
./install/enter_server.sh << EOF
    bin/install/docker_install.sh
    sudo docker build -t jyntech bin/install/docker_files/.
EOF
