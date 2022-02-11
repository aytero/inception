FROM		debian:buster

RUN			apt-get update && apt-get -y upgrade\
			apt-get -y install vim wget wordpress\
			php-fpm php-mysql php-mbstring php-xml php-gd

EXPOSE		9000

COPY		./tools/ /var/www/

RUN			chmod +x /var/www/start_wordress.sh

ENTRYPOINT	["/var/www/start_wordpress.sh"]

CMD			["/usr/sbin/php-fpm7.3", "--nodaemonize"]	
