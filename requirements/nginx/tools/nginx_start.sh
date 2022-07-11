#!/bin/bash

ln -s /etc/nginx/sites-available/lpfleide.42.fr /etc/nginx/sites-enabled/

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setting up ssl ...";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key -out \
		/etc/ssl/certs/nginx.crt -sha256 -subj "/CN=lpfleide.42.fr";
echo "Nginx: ssl is set up!";
fi

nginx -g 'daemon off;'