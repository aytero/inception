FROM		debian:buster

RUN		apt-get update && apt-get -y upgrade
RUN		apt-get -y install vim vsftpd

COPY		./entrypoint_ftp.sh /bin/
COPY		./vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN		chmod +x /bin/entrypoint_ftp.sh
RUN		chmod +x /etc/vsftpd/vsftpd.conf

EXPOSE		21

ENTRYPOINT	["/bin/entrypoint_ftp.sh"]

#CMD		["vsftpd /etc/vsftpd/vsftpd.conf"]
