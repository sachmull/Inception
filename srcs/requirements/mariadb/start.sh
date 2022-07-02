#!/bin/bash
docker run --name ubuntu_bash --rm -i -t ubuntu bash

#run docker in interactive
sudo docker run -it --rm mariadb bash

##docker in background
# run
sudo docker run -p 127.0.0.1:3306:3306 --name mariadb -t -d mariadb
# exec
sudo docker exec -it mariadb bash
# connect to mysql from outside
mysql -h 172.0.0.1 -P 3306 

#delete all docker images
sudo docker rm $(sudo docker ps -a -q)

#check services
service --status-all