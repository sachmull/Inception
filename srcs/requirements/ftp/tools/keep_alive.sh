#!/bin/bash
ison=$(top -n 1 | grep " vsftpd ");

while [ "$ison" != "" ]
do
        sleep 5;
        ison=$(top -n 1 | grep " vsftpd ");
done
