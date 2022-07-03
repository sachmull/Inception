#!/bin/bash

#run docker in interactive
sudo docker run -it --rm mariadb bash

##docker in background
# run
sudo docker run -p 127.0.0.1:3306:3306 --name mariadb -t -d mariadb
# exec
sudo docker exec -it mariadb bash

#change bind address
/etc/mysql/mariadb.conf.d/50-server.cnf
bind-address = 0.0.0.0

##create user + user access mysql database
# creates user 'test' and sets user access for email database
grant all on emails.* to 'test'@'' identified by '123456';
# connects to mysql 'emails' database with localhost & port 3306 with user test
sudo mysql -h 127.0.0.1 -P 3306 -utest -p emails

#delete all docker images
sudo docker rm $(sudo docker ps -a -q)

#check services
service --status-all
