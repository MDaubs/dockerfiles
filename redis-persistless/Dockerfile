FROM ubuntu:trusty

MAINTAINER Matt Daubert <mdaubert@gmail.com>

RUN apt-get update -q -q \
 && apt-get install -q -y redis-server

RUN apt-get -q -y clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ADD redis.conf /etc/redis/redis.conf

EXPOSE 6379
CMD ["/usr/bin/redis-server"]
