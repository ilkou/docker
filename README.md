## create machine

https://docs.docker.com/machine/reference/create/

## docker-machine ip

https://docs.docker.com/machine/reference/ip/

## env variables

#### Explanation

docker-machine env Char command output:
```
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/vbrazhni/.docker/machine/machines/Char"
export DOCKER_MACHINE_NAME="Char"
# Run this command to configure your shell: 
# eval $(docker-machine env Char)
```

#### How to check result?

docker-machine ls command output:
```
NAME   ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER        ERRORS
Char   *        virtualbox   Running   tcp://192.168.99.100:2376           v18.05.0-ce   
```
Now the ACTIVE column of Char has * instead of -

## restart policies

https://docs.docker.com/engine/reference/run/#restart-policies---restart

