```shell
docker create network redis-cluster-local-net
```
```shell
docker run --rm -d --net redis-cluster-local-net --name r1 redis
```