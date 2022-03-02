FROM		debian:buster

RUN		apt-get update
RUN		apt-get -y install vim wget wordpress\
			php-fpm php-mysql php-mbstring php-xml php-gd

EXPOSE		9000

COPY		./tools/start_wordpress.sh /var/www/
COPY		./tools/wp-config.php /var/www/

RUN		chmod +x /var/www/start_wordpress.sh

ENTRYPOINT	["bash", "/var/www/start_wordpress.sh"]

CMD		["/usr/sbin/php-fpm7.3", "--nodaemonize"]	
