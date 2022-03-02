#!/usr/bin/env bash

# DB config

	echo "Starting database configuration"

#sed -i "s/bind-ad/ \#bind-ad/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/\#port/port /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
#sed -i "s/\/run\/mysqld\/mysqld.sock/\/var\/run\/mysqld\/mysql.sock/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
#sed -i "s/\/run\/mysqld\/mysqld.pid/\/var\/run\/mysqld\/mysql.pid/" "/etc/mysql/mariadb.conf.d/50-server.cnf"

chown -R mysql:mysql /var/lib/mysql
chmod -R 755 /var/lib/mysql/
#chown -R mysql:mysql /var/run/mysql
#chmod -R 755 /var/run/mysql/
chmod -R 444 /etc/mysql/mariadb.conf.d/50-server.cnf

if [ ! -d "var/lib/mysql/wp" ]; then

	echo "Creating database"

	service mysql start
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME DEFAULT CHARACTER SET utf8;"
	mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
	mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';"
	mysql -u root -e "FLUSH PRIVILEGES;"

	mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
	mysql -u root -e "FLUSH PRIVILEGES;"

	#mysqladmin -u root password $MYSQL_ROOT_PASSWORD -h 127.0.0.1
	#mysqladmin -u root password $MYSQL_ROOT_PASSWORD #-h 94.154.11.107
	#mysql -h 127.0.0.1 -P 3306 -u root $DB_NAME

	sleep 5

	service mysql stop
#else
#	echo "Db config else branch"

#	mkdir -p /var/run/mysqld
#	touch /var/run/mysqld/mysqld.pid
#	mkfifo /var/run/mysqld/mysqld.sock
fi

#chown -R mysql /var/run/mysqld

	echo "Finishing db config"

sleep 5

/usr/bin/mysqld_safe
