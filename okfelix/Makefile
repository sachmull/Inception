all:
	mkdir -p /home/lpfleide/data/database
	mkdir -p /home/lpfleide/data/website
	sudo docker-compose -f ./srcs/docker-compose.yml up

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf /home/fharing/data

re: fclean all

nginx:
	sudo docker-compose -f ./srcs/docker-compose.yml build nginx

wordpress:
	sudo docker-compose -f ./srcs/docker-compose.yml build wordpress

mariadb:
	sudo docker-compose -f ./srcs/docker-compose.yml build mariadb

delete:
	sudo docker container prune -f
	sudo docker rmi $$(sudo docker images -q)

show:
	sudo docker container ls -a
	sudo docker image ls -a