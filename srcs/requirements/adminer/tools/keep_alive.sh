#!/bin/bash
ping -c 1 mariadb &> /dev/null;

while [ $? -eq 0 ]
do
        sleep 5;
        ping -c 1 mariadb &> /dev/null;
done
