clean:
	@sudo docker rm -f mariadb

build:
	@sudo docker build . -t mariadb

run: build
	@sudo docker run -p 127.0.0.1:3306:3306 --name mariadb -t -d -v database:/var/lib/mysql mariadb
	@sudo docker exec -it mariadb bash

re: clean build run

connect:
	@sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data

.PHONY: clean build run re connect
