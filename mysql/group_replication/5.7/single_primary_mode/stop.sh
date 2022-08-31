for id in `seq 1 5`
do
  docker stop cluster_node_${id}
  docker rm cluster_node_${id}
done;
rm -rf ./node_*
