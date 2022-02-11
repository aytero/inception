FROM		debian:buster

RUN			apt-get update && apt-get -y upgrade\
			apt-get -y install mariadb-server vim

EXPOSE		3306

COPY		start_mariadb.sh /var/www/

RUN			chmod +x /var/www/start_mariadb.sh
#RUN			chmod +x /var/www/db-conf.conf

ENTRYPOINT	["/var/www/start_mariadb.sh"]

#CMD			["mariadb"]
CMD			["mysqld"]
