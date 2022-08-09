for port in `seq 7001 7006`;
do
  mkdir -p ./${port}/conf && PORT=${port} envsubst < ./redis-cluster.tmpl > ./${port}/conf/redis.conf && mkdir -p ./${port}/data;
done
#Create 6 redis containers
for port in `seq 7001 7006`;
do
    docker run -d -it -p ${port}:${port} -p 1${port}:1${port} -v $PWD/${port}/conf/redis.conf:/usr/local/etc/redis/redis.conf -v $PWD/${port}/data:/data --privileged=true --restart always --name redis-${port} --net redis-net --sysctl net.core.somaxconn=1024 redis redis-server /usr/local/etc/redis/redis.conf;
done
#Find IP
for port in `seq 7001 7006`; do
echo -n "$(docker inspect --format '{{ (index .NetworkSettings.Networks "redis-net").IPAddress }}' "redis-${port}")":${port}" ";
done
