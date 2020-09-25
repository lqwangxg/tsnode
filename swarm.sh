# check pattern before run service.
if [ $1 = 'swarm' ]; then 
  # Method1: run docker service by docker-stack.yml
  docker swarm init --advertise-addr $(hostname -i)
  docker stack deploy -c docker-stack.yml mongo --build
else
  # Method2: run docker service by docker-compose.yml
  docker-compose -f docker-stack.yml up --build 
fi
