# check pattern before run service.
stack_yml=docker-stack-mongo.yml
stack_name=mongo
if [ $1 = 'swarm' ]; then 
  # Method1: run docker service by docker-stack.yml
  docker stack ls |grep $stack_name
 
  docker swarm init --advertise-addr $(hostname -i)
  docker stack deploy -c $stack_yml $stack_name 
else
  # Method2: run docker service by docker-compose.yml
  docker-compose -f $stack_yml up
fi
