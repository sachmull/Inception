FROM debian:buster-20220509

ADD http://www.adminer.org/latest.php /var/www/adminer.php

RUN chown -R www-data:www-data /var/www/adminer.php \
	&& chmod 755 /var/www/adminer.php

ENTRYPOINT cp /var/www/adminer.php /var/www/html/adminer.php && bash

EXPOSE 8080