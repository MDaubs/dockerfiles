release: build push

build:
	docker build -t mdaubs/mysql-tmpfs:5.5 --rm .

push:
	docker tag 5.5 mdaubs/mysql-tmpfs:5.5
	docker push mdaubs/mysql-tmpfs:5.5

bash:
	docker run --rm --privileged -t -i mdaubs/mysql-tmpfs:5.5 bash

server:
	docker run -d --privileged -t -i mdaubs/mysql-tmpfs:5.5
