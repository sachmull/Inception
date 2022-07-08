# Base img
FROM debian:buster-20220509


# Install nginx
RUN apt-get -y update \
	&& apt-get -y install \
						nginx \
						openssl

# Copy website and nginx config file
COPY ./conf/default.conf /etc/nginx/sites-enabled/
COPY ./tools/nginx_start.sh /var/

RUN chmod +x /var/nginx_start.sh

# Restart nginx service & go in bash
ENTRYPOINT [ "/var/nginx_start.sh" ]
