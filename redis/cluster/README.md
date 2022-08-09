* ###init 
```shell
./redis.conf
```

* create cluster
```shell
redis-cli --cluster create  redis-7001:7001 \
 redis-7002:7002 \
 redis-7003:7003 \
 redis-7004:7004 \
 redis-7005:7005 \
 redis-7006:7006 --cluster-replicas 1
```
* create cluster
```shell
redis-cli --cluster create  192.168.80.2:7001 \
 192.168.80.3:7002 \
 192.168.80.4:7003 \
 192.168.80.5:7004 \
 192.168.80.6:7005 \
 192.168.80.7:7006 --cluster-replicas 1
```

* add-node as a master node
```shell
redis-cli --cluster add-node new_host:new_port existing_host:existing_port
```
examples
```shell
redis-cli --cluster add-node redis-8000:8000 redis-7001:redis-7001
```
* add-node as a slave node
```shell
redis-cli --cluster add-node redis-8001:8001 redis-7001:7001 --cluster-slave
```


* reshard slots from a master node to another master node
```shell
redis-cli --cluster reshard redis-8000:8000 \ 
--cluster-to ebb663d29c85c7df09aa9e02a2e0dd0bf3bc5759 \
--cluster-from 088d632e802f657b9ee3328988c89dd38f3dbd78 \ 
--cluster-slots 2000
```
* check slots sharding in cluster
```shell
 redis-cli --cluster info redis-8000:8000
```

* rebalance slots 
```shell
redis-cli --cluster rebalance redis-7001:7001 --cluser-use-empty-masters 
```