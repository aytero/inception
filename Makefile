
all: start
	# -C ./srcs/
	#source ./virtualbox_setup.sh
	#. ./virtualbox_setup.sh
	#cd ./srcs && docker-compose up --build
	#cd ./srcs && pwd && echo "hello there"

start:
	docker-compose -f srcs/docker-compose.yaml up

stop:
	docker-compose -f srcs/docker-compose.yaml stop

down:
	docker-compose -f srcs/docker-compose.yaml down

re:
	docker-compose -f srcs/docker-compose.yaml up --build

#restart_machine:
#	docker-machine restart $(MACHINE_NAME)

clean:
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)

.PHONY: all start stop down re clean
