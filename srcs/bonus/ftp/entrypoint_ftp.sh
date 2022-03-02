#!/bin/bash

echo "Starting vsftpd config"

root_var=$(cat /etc/vsftpd/vsftpd.conf | grep "local_root=/var/www/html")

echo "checking grep return: |$root_var|"

mkdir -p /var/run/vsftpd/empty

if [ -z "$root_var" ]; then

	echo "Creating ftp user"

	adduser --home /home/$FTP_USER --disabled-password --gecos '' $FTP_USER
	echo "$FTP_USER:$FTP_USER_PASSWORD" | chpasswd

	chgrp -R $FTP_USER /var/www/html
	#chown -R nobody:nogroup /var/www/html
	chown -R $FTP_USER: /var/www/html
	chmod -R a-w /var/www/html

	echo "local_root=/var/www/html" >> /etc/vsftpd/vsftpd.conf
fi

echo "Finishing vsftpd config"

vsftpd /etc/vsftpd/vsftpd.conf
