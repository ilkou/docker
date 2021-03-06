## create virtual machine

https://docs.docker.com/machine/reference/create/

## ip of virtual machine

https://docs.docker.com/machine/reference/ip/

## the variables needed by the virtual machine

"docker-machine env Char" command output:
```
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/ilkou/.docker/machine/machines/Char"
export DOCKER_MACHINE_NAME="Char"
# Run this command to configure your shell:
# eval $(docker-machine env Char)
```

#### check result

"docker-machine ls" command output:
```
NAME   ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER     ERRORS
Char   *        virtualbox   Running   tcp://192.168.99.100:2376           v19.03.5 
```
Now the ACTIVE column of Char has * instead of -

## docker pull

https://docs.docker.com/engine/reference/commandline/pull/

## docker run

https://docs.docker.com/engine/reference/commandline/run/
https://docs.docker.com/config/containers/container-networking/
https://docs.docker.com/engine/reference/run/#restart-policies---restart
##### Port Mapping
https://docs.docker.com/docker-for-mac/networking/
When you run a container with the -p argument, for example:
```
$ docker run -p 80:80 -d nginx
```
Docker Desktop for Mac makes whatever is running on port 80 in the container (in this case, nginx) available on port 80 of localhost. In this example, the host and container ports are the same. What if you need to specify a different host port? If, for example, you already have something running on port 80 of your host machine, you can connect the container to a different port:
```
$ docker run -p 8000:80 -d nginx
```
Now, connections to localhost:8000 are sent to port 80 in the container. The syntax for -p is HOST_PORT:CLIENT_PORT

## container's internal IP address

https://linuxconfig.org/how-to-retrieve-docker-container-s-internal-ip-address
https://www.thegeekdiary.com/how-to-get-information-about-a-container-in-docker

## alpine's shell

https://stackoverflow.com/questions/35689628/starting-a-shell-in-the-docker-alpine-container/43564198#43564198

## docker volume

https://docs.docker.com/engine/reference/commandline/volume_create/

## MySQL

#### Volume
link to volume https://hub.docker.com/_/mysql 
==> /var/lib/mysql
#### Default Authentication Plugin Considerations
https://mysqlserverteam.com/upgrading-to-mysql-8-0-default-authentication-plugin-considerations/
#### Check Mount
https://stackoverflow.com/questions/31235211/go-templates-how-do-i-access-array-item-arr2-in-templates
docker inspect spawning-pool -f '{{ (index .Mounts 0).Destination }}'

## PhpMyAdmin
https://omarghader.github.io/docker-tutorial-phpmyadmin-and-mysql-server/
##### Running PhpMyAdmin container
Phpmyadmin must point to MySQL Server. So that we must link both containers by adding the option : –link name-of-container:name-of-imag.
```
$ docker run --name myadmin -d --link mysql:db -p 8080:80 phpmyadmin
```
## Docker logs
https://takacsmark.com/docker-logs/
https://success.docker.com/article/view-realtime-container-logging

## Docker Python Flask

python:<version>-slim => https://hub.docker.com/_/python
--host=0.0.0.0 => https://flask.palletsprojects.com/en/1.1.x/quickstart/

## Docker Swarm

https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/

## Gitlab

* https://hub.docker.com/r/gitlab/gitlab-ce/~/dockerfile/
* https://help.ubuntu.com/community/AptGet/Howto
* https://gitlab.com/gitlab-org/gitlab-ce

`docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03`
