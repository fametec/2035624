#!/bin/bash


yum -y update


curl -sSL https://get.docker.com/ | bash


systemctl enable docker


systemctl start docker


systemctl status docker


echo '
Agora execute o comando: 

docker run -d --name nginx -p 80:80 nginx

veja se está funcionando: 

docker ps -a

Remova o conteiner

docker rm -f nginx

'



