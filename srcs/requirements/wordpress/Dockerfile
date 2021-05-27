FROM	debian:buster

RUN		apt-get update && apt-get -y upgrade\
		apt-get -y install wordpress php-fpm

COPY	./wp-config.php ./

CMD		["./tools/start_wordpress.sh"]
