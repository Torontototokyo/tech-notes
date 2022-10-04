# Firewall setting for setting kubernetes cluster
```shell

2379/tcp: Kubernetes etcd server client API (on master nodes in multi-master deployments)

2380/tcp: Kubernetes etcd server client API (on master nodes in multi-master deployments)

6443/tcp: Kubernetes API server (master nodes)

8090/tcp: Platform Agent (master and worker nodes)

8091/tcp: Platform API Server (operator node)

8472/udp: Flannel overlay network, VxLAN backend (master and worker nodes)

10250/tcp: Kubernetes kubelet API server (master and worker nodes)

10251/tcp: Kubernetes kube-scheduler (on master nodes in multi-master deployments)

10252/tcp: Kubernetes kube-controller-manager (on master nodes in multi-master deployments)

10255/tcp: Kubernetes kubelet API server for read-only access with no authentication (master and worker nodes)


```