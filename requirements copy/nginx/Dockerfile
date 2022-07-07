# Base img
FROM debian:buster-20220509


# Install nginx
RUN apt-get -y update \
	&& apt-get -y install nginx openssl

# Copy website and nginx config file
# COPY index.html /usr/share/nginx/html/
# COPY nginx.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/sites-enabled/
COPY ./tools/nginx_start.sh /var/www/
EXPOSE 443

RUN chmod +x /var/www/nginx_start.sh

# Restart nginx service & go in bash
ENTRYPOINT [ "var/www/nginx_start.sh" ]
