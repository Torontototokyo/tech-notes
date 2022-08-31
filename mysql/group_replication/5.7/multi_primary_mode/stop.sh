for id in `seq 6 10`
do
  docker stop cluster_node_${id}
  docker rm cluster_node_${id}
done;
rm -rf ./node_*
