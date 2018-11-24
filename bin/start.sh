#!/bin/bash

./install/enter_server.sh << EOF
    sudo docker build -t jyntech Jyn_AutoServe/
    sudo docker run -d -p 80:443 jyntech
    Jyn_AutoServe/bin/install/nginx_setup.sh
EOF
