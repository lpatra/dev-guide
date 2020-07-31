[Index][home] > Devops > Nginx Proxy

# Nginx Proxy

>The best way is to use docker. The following guide  will explain setting a docker-compose based nginx reverse proxysh


## Creating self signed ssl key and certificate
```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt
```


[home]: /dev-guide
