#!/bin/bash

cd /var/www/html/

wp core install --title=${WP_TITLE} \
				--admin_user=${WP_ADMIN_USER} \
				--admin_password=${WP_ADMIN_PASSWORD} \
				--admin_email=${WP_ADMIN_MAIL} \
				--url=${WP_URL} \
				--allow-root

# php-fpm listening for fastcgi request || -F to stay in foreground and dont deamonize
php-fpm7.3 -F