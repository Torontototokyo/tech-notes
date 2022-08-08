检测hostname为bar的redis server是否可用
```shell
docker run --rm -it redis redis-cli -h bar ping
```
connect with cli
connect r-master 6379