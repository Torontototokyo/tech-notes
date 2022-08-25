show eth0
```shell
ip a s eth0
```
show net namespaces
```shell
ip netns
```
add net1 namespace
```shell
ip netns net1
```
show net1 link
```shell
ip exec net1 ip link
```
