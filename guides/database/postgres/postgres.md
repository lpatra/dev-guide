[Index][home] > Database > Postgres

# Postgres

## Installation

### Using Docker
- [Docker Image](https://hub.docker.com/_/postgres)

### docker run
```bash
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```

### docker-compose
```yml
version: '3.1'

services:

  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: example

  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080
```



[home]: /dev-guide
