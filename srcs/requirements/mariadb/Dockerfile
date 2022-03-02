FROM		debian:buster

RUN		apt-get update
RUN		apt-get -y install mariadb-server vim

EXPOSE		3306

COPY		start_mariadb.sh /var/www/

RUN		chmod +x /var/www/start_mariadb.sh

ENTRYPOINT	["/var/www/start_mariadb.sh"]

#CMD		["/usr/bin/mysqld_safe"]
