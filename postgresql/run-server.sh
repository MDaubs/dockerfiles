#! /bin/sh
docker run -d -name pgtest -v /vol/pgtest:/pgdata postgresql:9.2
