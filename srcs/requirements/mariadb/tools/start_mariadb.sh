#!/bin/bash

#chown
#chmod

# DB config
#CREATE DATABASE '$DBNAME';
CREATE DATABASE @'DBNAME';
CREATE USER '$MYSQL_USER'@localhost IDENTIFIED BY '$MYSQL_PASSWORD';
CREATE USER '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_USER'@localhost IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON '$DBNAME'.* TO '$MYSQL_ROOT_USER'@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;

# service start
service mysql start
