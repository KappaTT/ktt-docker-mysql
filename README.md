# ktt-docker-mysql

## Credentials

```
host: 127.0.0.1
port: 3306
username: user
password: dev
```

## Scripts

| script     | description                                                                                                  |
| ---------- | ------------------------------------------------------------------------------------------------------------ |
| `start.sh` | boots up the docker instance and binds to `127.0.0.1:3306` in the background and waits for mysql to be ready |
| `stop.sh`  | terminates and cleans the docker                                                                             |

## Docker Usage

| command               | description                                                |
| --------------------- | ---------------------------------------------------------- |
| `docker-compose up`   | boots up the docker instance and binds to `127.0.0.1:3306` |
| `docker-compose down` | terminates and cleans the docker                           |
