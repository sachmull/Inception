clean:
	@sudo docker rm -f nginx

iclean:
	@sudo docker rmi -f nginx

fclean:
	@sudo docker rm -f $$(sudo docker container ls -aq)
	@sudo docker rmi -f $$(sudo docker image ls -aq)

build:
	@sudo docker build . -t nginx

run:
	@sudo docker run -t -d -p 443:443 --name nginx nginx

exec:
	@sudo docker exec -it nginx bash

ask:
	@echo "_____________________________"
	@sudo docker container ls
	@echo "_____________-A________________"
	@sudo docker container ls -a

re: clean build

.PHONY: clean build run re
