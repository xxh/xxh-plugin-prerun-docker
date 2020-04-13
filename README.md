This plugin contains [portable rootless Docker daemon](https://docs.docker.com/engine/security/rootless/) which can be used on host without docker or to avoid restrictions.

## Install
From xxh repo:
```
xxh +I xxh-plugin-prerun-docker
```
From any repo:
```
xxh +I xxh-plugin-prerun-docker+git+https://github.com/xxh/xxh-plugin-prerun-docker
```    
Connect:
```
xxh myhost +if
```
Usage:
```
myhost> xxh-docker-run
myhost> docker ps                                                                                                                                                                                                                            
CONTAINER ID        IMAGE               COMMAND
myhost> docker run --rm hello-world | grep Hello
Hello from Docker!
myhost> xxh-docker-stop
```
