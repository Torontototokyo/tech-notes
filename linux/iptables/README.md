clean iptables
```shell
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
```

```shell
iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X
```