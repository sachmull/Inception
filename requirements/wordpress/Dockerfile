# Base img
FROM debian:buster-20220509

#install nginx
COPY ./tools /var/www/html/
RUN apt update -y \
	&& apt-get update -y \
	&& apt-get install -y	php7.3-fpm \
							php7.3-mysql \
							mariadb-client \
	&& rm -rf /var/lib/apt/lists/* 
	# && chown -R www-data:www-data /var/www/html/* \
	# && chown -R 755 /var/www/html/*

ADD https://wordpress.org/latest.tar.gz /var/www/html/latest.tar.gz
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/

RUN cd /var/www/html \
	&& tar -xvf latest.tar.gz \
	&& rm -rf latest.tar.gz \
	&& mv ./wordpress/* . \
	&& rm -rf wordpress/ \
	&& cd /usr/local/bin/ \
	&& chmod +x wp-cli.phar / \
	&& mv wp-cli.phar /usr/local/bin/wp
	# && php-fpm7.3 -F

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d


#restart nginx service & go in bash
ENTRYPOINT  bash 
#service php7.3-fpm start &&
