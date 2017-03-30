# Apache NiFi in docker

usage

```bash
docker run -d -p 80:8080 daggerok/nifi
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
