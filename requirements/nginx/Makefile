clean:
	@docker rm -f nginx

build:
	@docker build . -t nginx

run: build
	@docker run -t -d -p 443:443 --name nginx nginx

re: clean build run

.PHONY: clean build run re
