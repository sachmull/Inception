# Base img
FROM debian:buster-20220509

# Install mariadb

COPY ./tools /var/www/

RUN apt-get update && apt-get -fy install \
									mariadb-server \
									gettext \
	&& < /var/www/init_db.sql envsubst > /var/www/init_db_extracted.sql \
	&& rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Create mysql database and user

RUN service mysql start \
	&& mysql < /var/www/init_db_extracted.sql &&  rm -rf /var/www/init_db*
	# && mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB_NAME}" \
	# && mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_DB_USER}'@'' IDENTIFIED BY '${MYSQL_DB_PASSWORD}'" \
	# && mysql -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB_NAME}.* TO '${MYSQL_DB_USER}'@''"  \
	# && mysql -u root -e "FLUSH PRIVILEGES"
	
ENTRYPOINT ["mysqld_safe"]




# Expose port to connect to
EXPOSE 3306
