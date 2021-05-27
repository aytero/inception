#!/bin/bash

# nginx
mv /var/www/nginx_config /etc/nginx/sites-avaliable/
ln -s /etc/nginx/sites-avaliable/nginx_config /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default

# TLS

# service start
service nginx start
