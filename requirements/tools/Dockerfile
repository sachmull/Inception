#base img
FROM debian:buster-20220509

#install nginx
RUN apt-get update && apt-get -y install nginx

#restart nginx service & go in bash
ENTRYPOINT service nginx restart && bash
