# Base img
FROM debian:buster-20220509

#install nginx
RUN apt update -y \
	&& mkdir /usr/share/wordpress \ 
	&& cd /usr/share/wordpress/ \
	&& apt-get install -y wget \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -zxvf latest.tar.gz \
	&& mv wordpress/* . \
	&& rm -rf wordpress

#restart nginx service & go in bash
ENTRYPOINT bash
