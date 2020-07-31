[Index][home] > Devops > Nginx Proxy

# Nginx Proxy

>The best way is to use docker. The following guide  will explain setting a docker-compose based nginx reverse proxysh


## Creating self signed ssl key and certificate
```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt
```



## Creating nginx config file

- The following confing will redirect http traffic to https and then proxy requests to http://app 

```ruby
## Redirect all http traffic to https
server {
    listen 80 default_server;
    server_name _;
    return 301 https://$host$request_uri;
}

## Proxy https traffic to http://app
server {
    listen 443 ssl default_server;
    proxy_pass http://app;
}
```

[home]: /dev-guide
