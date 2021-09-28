Dockerfile for Node.js projects.

## List image versions

```
docker image ls
```

## Build new version

```
docker build --tag namiaio/node-docker:tagname .
```

- The tag can be for example like `namiaio/node-docker:1.1`

## Push new version to DockerHub

- `docker push namiaio/node-docker:tagname`
