#!/bin/bash

# chown chmod

# nginx
mv /var/www/nginx_config /etc/nginx/sites-avaliable/
ln -s /etc/nginx/sites-avaliable/nginx_config /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default

# TLS
#openssl ecparam -name prime256v1 -genkey -noout -out server.key
openssl req -new -x509 -nodes -sha256 \
			-key /etc/ssl/private/server.key \
			-out /etc/ssl/certs/server.crt \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=Ecole42/OU=School21/CN=lpeggy"

# service start
service nginx start
