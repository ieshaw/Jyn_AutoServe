#!/bin/bash

rm -rf  ../../admin/
./install/enter_server.sh << EOF
    rm -rf admin/
EOF
