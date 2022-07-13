# Base img
FROM debian:buster-20220509

#install nginx
COPY ./tools /var/www/html/

RUN apt-get update -y \
	&& apt-get install -y	php7.3-fpm \
							php7.3-mysql \
							mariadb-client \
	&& rm -rf /var/lib/apt/lists/* \
	&& chown -R www-data:www-data /var/www/html/* \
	&& chown -R 755 /var/www/html/*

ADD https://wordpress.org/latest.tar.gz /var/www/html/latest.tar.gz
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/

RUN cd /var/www/html \
	&& tar -xvf latest.tar.gz --exclude=latest.tar.gz \
	&& rm -rf latest.tar.gz \
	&& mv wordpress/* . \
	&& rm -rf wordpress/ \
	&& chmod +x /usr/local/bin/wp-cli.phar \
	&& mv /usr/local/bin/wp-cli.phar /usr/local/bin/wp

RUN	mkdir /run/php

COPY ./conf/wp-config.php /var/www/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/config.sh /var/www/config.sh

# Redis
ADD https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php /var/www/html/wp-content/

RUN chmod +x /var/www/config.sh
ENTRYPOINT  ["bash", "/var/www/config.sh"]
