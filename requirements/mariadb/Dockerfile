#base img
FROM debian:buster-20220509

#install mariadb
RUN apt-get update && apt-get -y install mariadb-server mariadb-client
ENTRYPOINT service mysql restart && bash

EXPOSE 3306
# ENTRYPOINT ["bash","entrypoint.prod.sh"]