# Base img
FROM debian:buster-20220509

# Install mariadb

RUN apt-get update && apt-get -fy install \
									mariadb-server \
	&& rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Create mysql database and user

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_ROOT_PASSWORD
ARG DB_HOST

RUN service mysql start \
	&& mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME}" \
	&& mysql -u root -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'' IDENTIFIED BY '${DB_PASSWORD}'" \
	&& mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@''"  \
	&& mysql -u root -e "FLUSH PRIVILEGES"

ENTRYPOINT [ "mysqld_safe" ]

# Expose port to connect to
EXPOSE 3306
