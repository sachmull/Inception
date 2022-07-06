# Base img
FROM debian:buster-20220509

EXPOSE 9000
#install nginx
RUN apt update -y \
	&& apt-get update -y \
	&& apt-get install -y php7.3-fpm php7.3-mysql \
	&& apt-get install -y mariadb-client \
	&& mkdir /usr/share/wordpress \ 
	&& cd /usr/share/wordpress/ \
	&& apt-get install -y wget \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -zxvf latest.tar.gz \
	&& mv wordpress/* . \
	&& rm -rf wordpress \
	&& rm -rf /var/lib/apt/lists/*

#restart nginx service & go in bash
ENTRYPOINT bash
