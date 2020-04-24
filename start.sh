#!/bin/sh
docker-compose up &

mysql_docker_ready() {
    mysqladmin ping --host=localhost --port=3306 --user=user --password=dev --protocol=tcp > /dev/null 2>&1
}

while !(mysql_docker_ready); do
    sleep 1
done

echo "MySQL docker is ready"