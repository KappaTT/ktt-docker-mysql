#!/bin/sh
cd "$(dirname "$0")"

docker-compose down > /dev/null

echo "\xE2\x9C\x94 MySQL docker spun down"