FROM	debian:buster

RUN		apt-get update && apt-get -y upgrade\
		apt-get -y install mariadb-server

EXPOSE	3306

COPY	start_mariadb.sh /var/www/

RUN chmod +x /var/www/start_mariadb.sh

ENTRYPOINT	["/var/www/start_mariadb.sh"]

CMD			["mariadb"]
