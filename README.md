# PostgreSQL

## Build
Via GitHub repository
```bash
$ docker build --tag alireaza/postgresql:$(date -u +%Y%m%d) --tag alireaza/postgresql:latest https://github.com/alireaza/postgresql.git
```

## Run
```bash
$ docker run \
--interactive \
--tty \
--rm \
--env="TZ=$(cat /etc/timezone)" \
--env="POSTGRES_PASSWORD=PASSWORD" \
--mount="type=bind,source=$(pwd)/udocker,target=/var/lib/postgresql/data" \
--publish="5432:5432" \
--name="postgresql" \
alireaza/postgresql
```

