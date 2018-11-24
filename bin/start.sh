#!/bin/bash

./install/enter_server.sh << EOF
    sudo docker run -p 80:80 jyntech
EOF
