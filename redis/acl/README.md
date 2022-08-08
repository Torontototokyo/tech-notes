创建一个user
```shell
setuser alice
```
激活一个user
```shell
setuser alice on
```
设置user密码
```shell
setuser alice <123123
```
禁用一个user
```shell
setuser alice off
```
让alice查cached:1的权限
```shell
setuser alice ~cached:1 +get
get cached:1
```

让alice查cached:*的权限
```shell
setuser alice ~cached:* +get
get cached:123
```

让alice设置cached:1的权限
```shell
setuser alice ~cached:1 +set
get cached:1
```

让alice设置cached:*的权限
```shell
setuser alice ~cached:* +set
get cached:123
```
