#! /bin/sh
chown postgres:postgres /pgdata
chmod 0700 /pgdata
su -c "/usr/lib/postgresql/9.2/bin/postgres --config-file=/etc/postgresql/9.2/main/postgresql.conf" postgres
