#!/bin/bash

rm -rf  ../admin/
./install/enter_server.sh << EOF
    rm -rf Jyn_AutoServe/
EOF
rm ~/creds.txt
