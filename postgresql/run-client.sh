#! /bin/sh
docker run -rm -i -t -link pgtest:db postgresql:9.2 /root/guest-run-client.sh
