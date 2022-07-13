# Base img
FROM debian:buster-20220509

#install nginx
RUN apt-get update -y \
	&& apt-get install -y \
				redis-server \
				php7.3-redis

# ADD https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php /var/www/html/wp-content/

COPY ./conf/redis.conf /var/www/redis.conf

EXPOSE 6379

ENTRYPOINT service redis-server start && bash
CMD cat /var/www/redis.conf >> /etc/redis/redis.conf