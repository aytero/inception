FROM	debian:buster
#or linux alpine

RUN		apt-get update && apt-get -y upgrade

#WORKDIR
RUN		apt-get -y install nginx openssl vim

COPY	./nginx_config ./

#EXPOSE	443

#CMD		bash run.sh
