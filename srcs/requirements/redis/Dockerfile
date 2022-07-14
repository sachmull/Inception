# Base img
FROM debian:buster-20220509

#install nginx
RUN apt-get update -y \
	&& apt-get install -y \
				redis-server \
				php7.3-redis

# ADD https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php /var/www/html/wp-content/

COPY ./conf/redis.conf /var/www/redis.conf

RUN sed -i 's/bind 127.0.0.1 ::1/bind 0.0.0.0/g' /etc/redis/redis.conf

EXPOSE 6379

RUN apt update -y && apt upgrade -y && apt-get install procps -y
COPY ./tools/keep_alive.sh keep_alive.sh
RUN chmod +x keep_alive.sh

ENTRYPOINT service redis-server start && ./keep_alive.sh
CMD cat /var/www/redis.conf >> /etc/redis/redis.conf 