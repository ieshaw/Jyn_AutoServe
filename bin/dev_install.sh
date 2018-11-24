#!/bin/bash

./install/dev_scp_project.sh
./install/enter_server.sh << EOF
    Jyn_AutoServe/bin/install/docker_install.sh
EOF
