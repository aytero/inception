
all:
	# -C ./srcs/
	cd ./srcs && docker-compose up --build

stop:
	cd ./srcs && docker-compose stop

start:
	cd ./srcs && docker-compose start

clean:
	cd ./srcs && docker-compose down

fclean:

.PHONY: all stop clean fclean
