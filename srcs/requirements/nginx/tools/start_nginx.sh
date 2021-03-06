#!/usr/bin/env bash

# nginx
mv /var/www/nginx_config /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/nginx_config /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

# TLS
#openssl ecparam -name prime256v1 -genkey -noout -out server.key
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
			-keyout /etc/ssl/private/server.key \
			-out /etc/ssl/certs/server.crt \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=Ecole42/OU=School21/CN=lpeggy"
exec "$@"
