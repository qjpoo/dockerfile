# CentOS 7 with Docker

构建命令：

```shell
docker build -t bluersw/centos-7-docker:2.0 .
```

运行命令：

```shell
docker run -v /var/run/docker.sock:/var/run/docker.sock -it bluersw/centos-7-docker:2.0 /bin/bash
```

Pull：

```shell
docker pull bluersw/centos-7-docker:2.0
```
