
#SHELL:=/bin/bash

all:
	# -C ./srcs/
	#source ./virtualbox_setup.sh
	. ./virtualbox_setup.sh
	#cd ./srcs && docker-compose up --build
	cd ./srcs && pwd && echo "hello there"
activate:
	. ./activate.sh
stop:
	cd ./srcs && docker-compose stop

start:
	cd ./srcs && docker-compose start

#restart_machine:
#	docker-machine restart $(MACHINE_NAME)

clean:
	cd ./srcs && docker-compose down

fclean:

.PHONY: all stop clean fclean
