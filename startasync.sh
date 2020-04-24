#!/bin/sh
cd "$(dirname "$0")"

docker-compose up > /dev/null &

echo "\xE2\x9C\x94 MySQL docker spinning up in background"