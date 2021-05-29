#!/bin/bash

chown -R www-data /var/www/*
chmod -R 755 /var/www/*

# php-fpm config
#wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
#tar -xzvf phpMyAdmin-5.1.0-all-languages.tar.gz
#rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz
#mv phpMyAdmin-5.1.0-all-languages /var/www/ft_server/phpMyAdmin
mv config.inc.php /var/www/phpmyadmin

# wordpress config
#wget https://wordpress.org/latest.tar.gz
#tar -xzvf latest.tar.gz
#rm -rf latest.tar.gz
mv wp-config.php /var/www/wordpress

# service start
service php-fpm start
