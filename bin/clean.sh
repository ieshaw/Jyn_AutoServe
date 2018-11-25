#!/bin/bash

rm ~/creds.txt
rm -rf  ../../admin/
./install/enter_server.sh << EOF
    rm -rf admin/
    rm -rf Jyn_AutoServe/
EOF
