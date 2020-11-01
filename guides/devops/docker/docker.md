[Index][home] > Devops > Docker

# Docker

### Installation
- remove existing version
```bash
sudo apt-get purge docker-ce
sudo rm -rf /var/lib/docker
```
- install
```bash
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
```

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
  - change the `/bin/ash` do `/bin/bash` for ubuntu container
```bash
docker-compose run -it CONTAINER_NAME /bin/ash
```
  



[home]: /dev-guide
