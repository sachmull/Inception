FROM debian:buster-20220509

ADD http://www.adminer.org/latest.php /var/www/adminer.php

RUN apt update -y && apt upgrade -y && apt-get install procps -y && chown -R www-data:www-data /var/www/adminer.php \
	&& chmod 755 /var/www/adminer.php

COPY ./tools/keep_alive.sh ./keep_alive.sh
RUN chmod +x keep_alive.sh

ENTRYPOINT cp /var/www/adminer.php /var/www/html/adminer.php && ./keep_alive.sh

EXPOSE 8080