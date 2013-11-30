#! /bin/sh
docker run -rm -i -t -v /vol/pgtest:/pgdata postgresql:9.2 /root/guest-init-db.sh
