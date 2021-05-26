FROM	debian:buster
#or linux alpine

RUN		apt-get update && apt-get -y upgrade

#WORKDIR
RUN		apt-get -y install php7.3 php-fpm curl

COPY	./wp-config.php ./

#EXPOSE	443

#CMD		bash run.sh
