#!/bin/bash

if [ ! -d "/var/lib/mysql/wordpress" ]; then
echo "create database"

service mysql start
sleep 2

mysql -u root <<DATA
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS_ROOT');
DATA

service mysql stop
sleep 2
echo "database created"

else
echo "database found"
fi

mysqld_safe
