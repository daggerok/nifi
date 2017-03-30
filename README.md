# Apache NiFi in docker

image:
- Linux Alpine 3.5
- Oracle JDK 1.8 update 121
- Apache NiFi 1.1.2

usage

```bash
docker run -d -p 80:8080 daggerok/nifi # wait arount 30 seconds..
open http://localhost/nifi
```

update and build

```bash
vim Dockerfile
...
ENV NIFI_VERSION 1.1.2
...
:wq!
docker build --rm --force-rm --squash -t daggerok/nifi .
```

push

```bash
docker build --rm --force-rm --squash -t daggerok/nifi .
docker tag daggerok/nifi daggerok/nifi:1.1.2-alpine
docker tag daggerok/nifi daggerok/nifi:alpine
docker tag daggerok/nifi daggerok/nifi:latest
docker login
...
docker push daggerok/nifi:1.1.2-alpine
docker push daggerok/nifi:alpine
docker push daggerok/nifi:latest
```
