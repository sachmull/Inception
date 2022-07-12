STATE_UP=echo "\n\n\n\t\t  (ノಠ益ಠ)ノ彡┻━┻  \n\n\n"
STATE_DOWN=echo "\n\n\n\t\t  ┬─┬ノ( º _ ºノ)  \n\n\n"
SRC=$(STATE_UP) && cd ./srcs/

up:
	@$(SRC); sudo docker compose up
	@$(STATE_DOWN)

build:
	@$(SRC); sudo docker compose build
	@$(STATE_DOWN)

down:
	@$(SRC); sudo docker compose down
	@$(STATE_DOWN)

stop:
	@$(SRC); sudo docker compose stop
	@$(STATE_DOWN)

rm:
	@$(SRC); sudo docker compose rm
	@$(STATE_DOWN)

connect:
	@$(SRC); sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data
	@$(STATE_DOWN)

clean:
	@$(SRC); sudo docker system prune -af
	@$(STATE_DOWN)

fclean:
	@$(SRC); sudo docker system prune -f --volumes -a
	@$(STATE_DOWN)
