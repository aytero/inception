#!/bin/bash

if ! [ -f "/var/www/html/wp-config.php" ]; then
		mkdir -p /var/www/html/
		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
		chmod +x wp-cli.phar
		mv wp-cli.phar /usr/local/bin/wp

		cd var/www/html/
		wp core download --allow-root
		mv /var/www/wp-config.php var/www/html/

		wp core install --allow-root \
			--url=${WP_WEBSITE_URL} \
			--title=${WP_WEBSITE_TITLE} \
			--admin_user=${WP_ADMIN_USER} \
			--admin_password=${WP_ADMIN_PASSWORD} \
			--admin_email=${WP_ADMIN_EMAIL}

		wp user create --allow-root pony pony@42.fr --user_pass=2121

		mv * /var/www/html/
		#mv /var/www/object-cache.php /var/www/html/wp-content/
fi
exec "$@"
