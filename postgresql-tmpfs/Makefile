build:
	docker build -t mdaubs/postgresql-tmpfs:9.3 --rm .

push:
	docker tag 9.3 mdaubs/postgresql-tmpfs:9.3
	docker push mdaubs/postgresql-tmpfs:9.3

bash:
	docker run --rm --privileged -t -i mdaubs/postgresql-tmpfs:9.3 bash

server:
	docker run -d --privileged -t -i -p 5432:5432 mdaubs/postgresql-tmpfs:9.3
