up:
	@sudo docker compose up

down:
	@sudo docker compose down

stop:
	@sudo docker compose stop

rm:
	@sudo docker compose rm

connect:
	@sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data

clean: fclean

fclean:
	@sudo docker rm -f $$(sudo docker container ls -aq)
	@sudo docker rmi -f $$(sudo docker image ls -aq)
