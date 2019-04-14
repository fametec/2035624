#!/bin/bash

curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


chmod +x /usr/local/bin/docker-compose


docker-compose --version


echo '

Agora crie um docker-compose.yml 


vim /tmp/docker-compose.yaml


    version: '2'
     
    services:
      web:
        image: nginx
        ports:
         - "80:80"



E execute 

cd /tmp

docker-compose up


'
