FROM		debian:buster

RUN		apt-get update
RUN		apt-get -y install nginx openssl vim php-gd php-xml

COPY		./tools/nginx_config /var/www/
COPY		./tools/start_nginx.sh /var/www/

RUN		chmod +x /var/www/start_nginx.sh

EXPOSE		443

ENTRYPOINT	["/var/www/start_nginx.sh"]

CMD		["nginx", "-g", "daemon off;"]
