FROM		debian:buster

RUN			apt-get update
RUN			apt-get -y upgrade
RUN			apt-get -y install nginx openssl vim\
				php-gd php-xml

COPY		./tools/nginx_config ./tools/start_nginx.sh /var/www/

RUN			chmod +x /var/www/start_nginx.sh

EXPOSE		443

ENTRYPOINT	["bash", "/var/www/start_nginx.sh"]

CMD			["nginx" "-g" "daemon off"]
#better use exec form + signal handling script to avoid probs with pid 1
