#!/bin/bash

sudo docker ps -aq
sudo docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
