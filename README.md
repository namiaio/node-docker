Dockerfile for Node.js projects.

## List image versions

```
docker image ls
```

## Build new version

```
docker build --tag namiaio/node-docker:tagname .
```

If you want to use custom Dockerfile name, use `-f` flag:

```
docker build --tag namiaio/node-docker:tagname -f Dockerfile.custom .
```

- The tag can be for example like `namiaio/node-docker:1.3`

## Push new version to DockerHub

- `docker push namiaio/node-docker:tagname`
