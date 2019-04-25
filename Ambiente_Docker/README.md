# Instalação do Docker



    yum -y update


    curl -sSL https://get.docker.com/ | bash


    systemctl enable docker


    systemctl start docker


    systemctl status docker


Agora execute o comando: 

    docker run -d --name nginx -p 80:80 nginx

veja se está funcionando: 

    docker ps -a

Remova o conteiner

    docker rm -f nginx




# Instalar o Docker Compose


    curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


    chmod +x /usr/local/bin/docker-compose


    docker-compose --version



Agora crie um docker-compose.yml 


    vim /tmp/docker-compose.yaml


    version: '2'
     
    services:
      web:
        image: nginx
        ports:
         - "80:80"



Por fim, execute 

    cd /tmp

    docker-compose up


