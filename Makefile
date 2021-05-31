
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
	#cd ./srcs && docker-compose down
	#docker stop ...(all containers)
	#docker rm ...(containers)
	#docker rmi (images)
	#docker volume rm
	#docker network rm

.PHONY: all start stop down re clean
