##ask 
while [[ $use_rm != "y" && $use_rm != "n" ]]
do
echo 'Do you need to add --rm options to create containers by docker [y/n]'
read use_rm
done;
port=33060
group_hosts=""


#generate files

for id in `seq 1 5`
do 
  group_hosts=${group_hosts}"cluster_node_"${id}":"${port}","
done;
for id in `seq 1 5`
do
  host_name=cluster_node_${id}
  home=node_${id};
  mkdir -p ./$home;LOCAL_ADDRESS=${host_name}":"${port} SERVER_ID=${id} GROUP_HOSTS=${group_hosts::-1} envsubst < ./my.conf.tmpl > ./$home/my.cnf
  mkdir -p ./$home/log;
  touch ./$home/log/mysql_error.log
  touch ./$home/log/mysql.log
  chmod 777 -R ./${home}/log
done;


#create container



for id in `seq 1 5`
do 
  home=node_${id};
  host_name=cluster_node_${id}
  if [ $use_rm == "y" ]
    then
  docker run --rm -d --network my_net -v $PWD/${home}/log/mysql_error.log:/var/log/mysql/mysql_error.log -v $PWD/${home}/log/mysql.log:/var/log/mysql/mysql.log --name ${host_name} -e MYSQL_ROOT_PASSWORD=root -e MYSQL_ROOT_HOST=%  -v $PWD/${home}/my.cnf:/etc/mysql/my.cnf mysql:5.7
    else
  docker run  -d --network my_net -v $PWD/${home}/log/mysql_error.log:/var/log/mysql/mysql_error.log -v $PWD/${home}/log/mysql.log:/var/log/mysql/mysql.log --name ${host_name} -e MYSQL_ROOT_PASSWORD=root -e MYSQL_ROOT_HOST=%  -v $PWD/${home}/my.cnf:/etc/mysql/my.cnf mysql:5.7   
  fi
done;

