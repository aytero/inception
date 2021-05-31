#!/bin/bash

# DB config
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DBNAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_USER'@'%'"
#mysql -u root -e "CREATE USER '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -u root -e "FLUSH PRIVILEGES;"

# set root user & password

# service start
service mysql start
