#!/bin/sh
cd "$(dirname "$0")"

mysql_docker_ready() {
    mysqladmin ping --host=localhost --port=3306 --user=user --password=dev --protocol=tcp > /dev/null 2>&1
}

while !(mysql_docker_ready); do
    sleep 1
done

echo "\xE2\x9C\x94 MySQL docker is ready"