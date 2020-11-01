[Index][home] > Database > Postgres

# Postgres

## Installation

### Using Docker Compose
- Check [Docker guide][docker] to get more info about docker compose commands 
- [Postgres Docker Image](https://hub.docker.com/_/postgres)
- create the following `docker-compose.yml` file and `db-data` directory

```yml
version: '3.1'

services:

  db:
    image: postgres:13-alpine
    restart: always
    volumes:
      - "${PWD}/db-data:/var/lib/postgresql/data/" # persist data even if container shuts down
    ports:
      - "5432:5432" # to expose port to host
    environment:
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: admin

```

- start the db container
```bash
# the -d option in the following command with start containers in detached mode. 
docker-compose up -d
```

- Connect to a postgres instance
```bash
docker-compose run --rm db psql --host=db --username=admin
```

- destroy all containers when not needed
```bash
docker-compose down
```



[home]: /dev-guide
[docker]: /dev-guide/guides/devops/docker/docker

