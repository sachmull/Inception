SRC=cd ./srcs/

up:
	@$(SRC); sudo docker compose up

build:
	@$(SRC); sudo docker compose build

down:
	@$(SRC); sudo docker compose down

stop:
	@$(SRC); sudo docker compose stop

rm:
	@$(SRC); sudo docker compose rm

connect:
	@$(SRC); sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data

clean:
	@$(SRC); sudo docker system prune -af

fclean:
	@$(SRC); sudo docker system prune -f --volumes -a
