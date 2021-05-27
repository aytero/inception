FROM	debian:buster

RUN		apt-get update && apt-get -y upgrade\
		apt-get -y install nginx openssl

COPY	./nginx_config ./

CMD		["./tools/start_nginx.sh"]
#better use exec form + signal handling script to avoid probs with pid 1
