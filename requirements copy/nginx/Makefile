clean:
	@sudo docker rm -f nginx

build:
	@sudo docker build . -t nginx

run: build
	@sudo docker run -t -d -p 443:443 --name nginx nginx

re: clean build run

.PHONY: clean build run re
