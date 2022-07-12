#!/bin/bash

if test -f "/var/www/html/wp-config.php"; then
	echo "Wordpress configure found."

else

sleep 5
cd /var/www/html
wp core download --allow-root
cp /wp-config.php /var/www/html/
wp core install --allow-root --url=$DOMAIN_NAME --title=Inception --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=info@example.com --skip-email

mkdir /run/php

cd -
fi

php-fpm7.3 -F