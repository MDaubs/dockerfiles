FROM ubuntu:trusty

MAINTAINER Matt Daubert <mdaubert@gmail.com>

RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN apt-get update -q -q \
 && apt-get install -q -y postgresql-9.3 \
 && apt-get -q -y clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ADD pg_hba.conf /etc/postgresql/9.3/main/
ADD pg_ident.conf /etc/postgresql/9.3/main/
ADD postgresql.conf /etc/postgresql/9.3/main/
ADD run /postgresql/run
RUN chmod +x /postgresql/run

EXPOSE 5432
CMD ["/postgresql/run"]
