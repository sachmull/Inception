# Base img
FROM debian:buster-20220509

# Install mariadb
RUN apt-get update && apt-get -y install mariadb-server mariadb-client
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Create mysql database and user
ENTRYPOINT \
	service start \
	&& mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp_data" \
	&& mysql -u root -e "CREATE USER IF NOT EXISTS 'wp_user'@'' IDENTIFIED BY 'a'" \
	&& mysql -u root -e "GRANT ALL PRIVILEGES ON wp_data.* TO 'wp_user'@''"  \
	&& mysql -u root -e "FLUSH PRIVILEGES";
	# && bash


# Expose port to connect to
EXPOSE 3306
