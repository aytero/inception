FROM	debian:buster

RUN		apt-get update && apt-get -y upgrade\
		apt-get -y install mariadb-server

CMD		["./tools/start_mariadb.sh"]
