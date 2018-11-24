#!/bin/bash

./install/enter_server.sh << EOF
    sudo docker build -t jyntech Jyn_AutoServe/
    sudo docker run -p 443:443 jyntech
EOF
