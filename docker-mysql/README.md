# alpine-mysql

A mysql docker image base on alpine

# build image

```sh
bin/build.sh            # use default alpinelinux mirrors
bin/build.sh custom     # use default aliyun mirrors
```

# Usage

```sh
docker run -it --name mysql \
-p 3306:3306 \
-v $(pwd)/mysql:/opt \
-e MYSQL_DATABASE=blog \
-e MYSQL_USER=darebeat \
-e MYSQL_PASSWORD=blog12345 \
-e MYSQL_ROOT_PASSWORD=mysql mysql:1.0-alpine
```

# docker-compose

```yml
version: '3'
services:
    mysql:
        image: mysql:1.0-alpine
        ports:
            - "3306:3306"
        container_name: mysql-alpine
        restart: always
        environment:
            MYSQL_DATABASE: "blog"
            MYSQL_USER: "toyee"
            MYSQL_ROOT_PASSWORD: "mysql"
            MYSQL_PASSWORD: "blog12345"
        volumes:
            - ./mysql:/opt
```

It will create a new db, and set mysql root password(default is mysql)
