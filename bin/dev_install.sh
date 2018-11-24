#!/bin/bash

./install/dev_scp_project.sh
./install/enter_server.sh << EOF
    bin/install/docker_install.sh
    sudo docker build -t jyntech ./
EOF
