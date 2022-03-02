FROM		debian:buster

RUN		apt-get update
RUN		apt-get -y install vim wget redis-server php7.3-redis

EXPOSE		6379

COPY		./redis.conf /etc/

CMD		redis-server /etc/redis.conf --protected-mode no
