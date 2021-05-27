#!/bin/bash

# php-fpm config
mv config.inc.php /var/www/phpmyadmin

# wordpress config
mv wp-config.php /var/www/wordpress

# service start
service php-fpm start
