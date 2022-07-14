#!/bin/bash
ping -c 1 wordpress &> /dev/null;

while [ $? -eq 0 ]
do
        sleep 5;
        ping -c 1 wordpress &> /dev/null;
done
