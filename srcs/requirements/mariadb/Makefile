clean:
	@sudo docker rm -f mariadb
	@sudo docker volume rm database

fclean:
	@sudo docker rm -f $$(sudo docker container ls -aq)
	@sudo docker rmi -f $$(sudo docker image ls -aq)

build:
	@sudo docker build . -t mariadb

run: 
# @sudo docker run -p 127.0.0.1:3306:3306 --name mariadb -t -d -v database:/var/lib/mysql mariadb
	@sudo docker run --name mariadb -t -d mariadb
	@sudo docker exec -it mariadb bash

exec:
	@sudo docker exec -it mariadb bash

re: clean build run

connect:
	@sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data

.PHONY: clean build run re connect
