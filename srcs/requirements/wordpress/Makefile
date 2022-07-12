clean:
	@sudo docker rm -f wordpress

build:
	@sudo docker build . -t wordpress

run:
	@sudo docker run --name wordpress -t -d wordpress
	@sudo docker exec -it wordpress bash

re: clean build run

# connect:

.PHONY: clean build run re connect
