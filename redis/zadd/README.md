set 1 scope on 'one'
```shell
zadd myset 1 one
```
zcount 返回 min< scope < max 的元素
```shell
zcount myzset 1 10
```
zcard 返回集合的长度
```shell
zcard myzset
```
zrem 判断集合是否存在该元素
```shell
zrem myzset one two
```
zrange 返回集合指定索引的元素
```shell
zrange myzset 0 -1
```
zrank 返回一个元素在集合中的排位
```shell
zrange myzset one
zrange myzset two
zrange myzset three
```