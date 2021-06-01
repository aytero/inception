#!/bin/bash

# DB config
# if db not exists
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DBNAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_USER'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;"

#mysql -u root -e "CREATE USER '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
# set root user & password

# ELSE (if db exists)

# service start
service mysql start
