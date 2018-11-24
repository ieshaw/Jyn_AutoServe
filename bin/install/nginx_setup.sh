#!/bin/bash

mkdir docker_ssl_proxy
cp Jyn_AutoServe/bin/install/proxy_ssl.conf docker_ssl_proxy/
cd docker_ssl_proxy/
openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
docker run --name nginx_proxy -v `pwd`:/etc/nginx/conf.d -p 443:443 nginx
