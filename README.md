Dockerfile for Node.js projects.

## Build new version

```
docker build --tag namiaio/node-docker:XXX .
```

- The tag can be like `namiaio/node-docker:1.1`

## Push new version to DockerHub

- `docker push namiaio/node-docker:tagname`
