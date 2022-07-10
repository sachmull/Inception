# Base img
FROM debian:buster-20220509

# Install mariadb
RUN apt-get update && apt-get -y install mariadb-server \
	&& rm -rf /var/lib/apt/lists/*

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Create mysql database and user
ENTRYPOINT \
	service mysql start \
	&& mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB_NAME}" \
	&& mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_DB_USER}'@'' IDENTIFIED BY '${MYSQL_DB_PASSWORD}'" \
	&& mysql -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB_NAME}.* TO '${MYSQL_DB_USER}'@''"  \
	&& mysql -u root -e "FLUSH PRIVILEGES" \
	&& bash


# Expose port to connect to
EXPOSE 3306
