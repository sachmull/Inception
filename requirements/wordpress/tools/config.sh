#!/bin/bash

cd /var/www/html/

if [ ! -f /var/www/html/wp-config.php ]; then
wp config create	--dbhost=${DB_HOST} \
					--dbname=${DB_NAME} \
					--dbuser=${DB_USER} \
					--dbpass=${DB_PASSWORD} \
					--allow-root
fi

wp core install --title=${WP_TITLE} \
				--admin_user=${WP_ADMIN_USER} \
				--admin_password=${WP_ADMIN_PASSWORD} \
				--admin_email=${WP_ADMIN_MAIL} \
				--url=${WP_URL} \
				--allow-root

wp user get user1 --allow-root --path='/var/www/html/' --field=user_login
if  [ $? -eq 1 ] ; then
wp user create ${WP_USER} ${WP_USER_MAIL} --role=author --user_pass=${WP_USER_PASSWORD} --allow-root
fi 
cd -

# php-fpm listening for fastcgi request || -F to stay in foreground and dont deamonize
php-fpm7.3 -F