[Index][home] > Devops > Docker

# Docker

### Installation
- Refer the following guides to install in ubuntu
  - [Docker](https://docs.docker.com/engine/install/ubuntu/)
  - [Docker Compose](https://docs.docker.com/compose/install)

---

# Docker Compose
- **Note**: all `docker-compose` compose commands to be run from the directory containing the `docker-compose.yml` file

---

## Manage Containers
- start docker compose containers
```bash
docker-compose up -d
``` 
- stop docker compose containers
```bash
docker-compose down
``` 
- check logs
```bash
docker-compose logs
``` 


---

## Connecting to a existing container
- Connect to a docker compose alpine based container shell
  - change the `ash` do `bash` for ubuntu container
```bash
docker-compose run CONTAINER_NAME ash
```
  



[home]: /dev-guide
