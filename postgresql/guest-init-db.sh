#! /bin/sh
chown postgres:postgres /pgdata
chmod 0700 /pgdata
su -c "/usr/lib/postgresql/9.2/bin/initdb -D /pgdata" postgres
