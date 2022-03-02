#!/bin/bash

sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"

mkdir -p /run/php/
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

echo "Starting wordpress"

if  [ ! -f "/var/www/html/wp-config.php" ]; then

	echo "Installing wordpress"

	mkdir -p /var/www/html/
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp

	cd var/www/html/
	wp core download --allow-root
	mv /var/www/wp-config.php /var/www/html/

	sleep 5

	wp core install --allow-root \
		--url=${WP_WEBSITE_URL} \
		--title=${WP_WEBSITE_TITLE} \
		--admin_user=${WP_ADMIN_USER} \
		--admin_password=${WP_ADMIN_PASSWORD} \
		--admin_email=${WP_ADMIN_EMAIL}

	wp post update 1 --post_title=Tofu --allow-root

	wp user create --allow-root $WP_SECOND_USER $WP_SECOND_EMAIL\
		--user_pass=${WP_SECOND_PASSWORD}

	wp plugin install redis-cache --activate --allow-root
	wp plugin update --all --allow-root
	wp redis enable --allow-root
	
	touch /var/www/html/file.txt
	echo "lalala testing ftp" >> /var/www/html/file.txt

fi
exec "$@"
