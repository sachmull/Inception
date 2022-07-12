# Base img
FROM debian:buster-20220509


# Install nginx
RUN apt-get -y update \
	&& apt-get -y install \
						nginx \
						openssl \
	&& rm -rf /var/lib/apt/lists/*

# Copy website and nginx config file

COPY ./conf/default.conf /etc/nginx/sites-available/lpfleide.42.fr
COPY ./tools/nginx_start.sh /var/

RUN chmod +x /var/nginx_start.sh

# Restart nginx service & go in bash
ENTRYPOINT [ "/var/nginx_start.sh" ]
