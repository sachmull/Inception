# Base img
FROM debian:buster-20220509

#install nginx
COPY ./index.html /var/www/tmp/index.html

RUN chown -R 755 /var/www/tmp/*

EXPOSE 4000
