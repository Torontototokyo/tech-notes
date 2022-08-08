# certbot


- [Getting Started](#getting_started)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)



## Getting Started <a name = "getting_started"></a>

```
docker build . -t repository:tag
```
```
docker volume create cert
```

```
docker volume create letsencrypt
```
### 创建网站
```
docker run -itd --rm -v $PWD/app.conf:/etc/nginx/conf.d \
-v letsencrypt:/letsencrypt \
-v cert/:/certificate \
-p 80:80 \
-p 443:443 \
nginx
```

### 创建certbot\签名
```
docker run --rm -it -v letsencrypt:/letsencrypt \
-v cert:/etc/letsencrypt \
certbot:debian
```



## Usage <a name = "usage"></a>

```
certbot certonly --webroot
```
