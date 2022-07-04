# Base img
FROM debian:buster-20220509


# Install nginx
RUN apt-get update && apt-get -y install nginx

# Copy website and nginx config file
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 443

# Restart nginx service & go in bash
ENTRYPOINT service nginx restart && bash
