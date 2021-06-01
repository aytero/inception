FROM	debian:buster

RUN		apt-get update && apt-get -y upgrade\
		apt-get -y install wget wordpress\
		php-fpm php-mysql php-mbstring php-xml php-gd

#COPY	./wp-config.php ./
COPY	./tools/ /var/www/

EXPOSE	9000

ENTRYPOINT	["/var/www/start_wordpress.sh"]

CMD			[""]	
# daemon off
