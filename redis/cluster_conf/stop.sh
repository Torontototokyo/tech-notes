for node in `seq 7001 7006`;do
  docker stop redis-${node}
  docker rm redis-${node}
done
rm -rf 7001 7002 7003 7004 7005 7006