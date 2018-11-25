#!/bin/bash

cd ../admin
git add .
echo "What is your commit message?"
read message
git commit -m "$message"
git push origin master
cd ../bin
./stop.sh
./start.sh
