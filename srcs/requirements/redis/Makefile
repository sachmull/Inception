clean:
	@sudo docker rm -f redis

build:
	@sudo docker build . -t redis

run:
	@sudo docker run --name redis -t -d redis

exec:
	@sudo docker exec -it redis bash

re: clean build run

# connect:

.PHONY: clean build run re connect
