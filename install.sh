#!/usr/bin/env bash

sudo yum install epel-release -y
sudo yum install nginx -y

self_dir=`readlink -f $0|xargs dirname`

openssl genrsa -out ${self_dir}/server.key 2048
openssl req -new -key ${self_dir}/server.key -out ${self_dir}/server.csr -sha256
openssl x509 -req -days 365 -in ${self_dir}/server.csr -signkey ${self_dir}/server.key -out ${self_dir}/server.crt

mkdir -p $self_dir/log    

