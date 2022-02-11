#!/usr/bin/env bash

# DB config
chown -R mysql:mysql /var/lib/mysql

if [ ! -d var/lib/mysql/wp ]; then
	service mysql start
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
	mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
	mysql -u root -e "GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_USER'@'%'"
	mysql -u root -e "FLUSH PRIVILEGES;"

	mysqladmin -u root password $MYSQL_ROOT_PASSWORD
	service mysql stop
else
	mkdir /var/run/mysqld
	touch /var/run/mysqld/mysqld.pid
	mkfifo /var/run/mysqld/mysqld.sock
fi

chown -R mysql /var/run/mysqld

exec "$@"
