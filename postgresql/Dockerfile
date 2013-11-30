FROM ubuntu
MAINTAINER mdaubert@gmail.com
RUN apt-get update
RUN apt-get -y install python-software-properties software-properties-common
RUN add-apt-repository ppa:pitti/postgresql
RUN apt-get update
RUN apt-get -y install postgresql-9.2 postgresql-client-9.2 postgresql-contrib-9.2
ADD pg_hba.conf /etc/postgresql/9.2/main/
ADD pg_ident.conf /etc/postgresql/9.2/main/
ADD postgresql.conf /etc/postgresql/9.2/main/
RUN chown postgres:postgres /etc/postgresql/9.2/main/*.conf
ADD guest-run-server.sh /root/
RUN chmod +x /root/guest-run-server.sh
ADD guest-init-db.sh /root/
RUN chmod +x /root/guest-init-db.sh
ADD guest-run-client.sh /root/
RUN chmod +x /root/guest-run-client.sh
EXPOSE 5432
CMD ["/root/guest-run-server.sh"]
