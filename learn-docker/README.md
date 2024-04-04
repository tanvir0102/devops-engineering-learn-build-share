## Learn Docker from Beginner to Experts
### Docker basic commands after the installation
```shell
docker run nginx
docker ps
docker ps -a
docker stop <name/dockerID>
docker rm <name/dockerID>

docker images
docker rmi
docker pull nginx
docker run ubuntu sleep 5
docker exec <containername> cat /etc/hosts
docker run kodekloud/simple-webapp
docker run -d kodekloud/simple-webapp
docker attach <dockerID>
docker run -it centos bash
docker run -d centos sleep 20
```
### Docker Run Commands
```shell
docker run redis
docker run redis:4.0
docker run -p 8080:8080 kodekloud/simple-webapp
docker run -v /opt/datadir:/var/lib/mysql mysql
docker inspect <name/ID>
docker logs <name/ID>
```
### Create your own docker image
```shell
https://github.com/mmumshad/simple-webapp-flask
https://github.com/mmumshad/simple-webapp-docker
```
### Environment Variable
```shell
docker run -e APP_COLOR=pink simple-webapp-color
docker inspect <name>
docker container run -e APP_COLOR=blue -p 38282:8080 --name blue-app
docker container run -e MYSQL_ROOT_PASSWORD=db_pass123 --name mysql-db mysql
```

### Command and Entrypoint
```shell
docker run ubuntu [command]
docker run ubuntu sleep 5

FROM ubuntu
CMD sleep 5

FROM ubuntu
ENTRYPOINT [“sleep”]
CMD [“5”]
```

### Docker Compose - deploy sample application - voting application
https://github.com/mmumshad/example-voting-app
https://github.com/mmumshad/example-voting-app/blob/master/docker-compose-simple.yml
https://github.com/mmumshad/example-voting-app/blob/master/docker-compose.yml

```shell
docker run --name redis -d redis:alpine
docker run -d --name=clickcounter --link redis:redis -p 8085:5000 kodekloud/click-counter

Namespace: ( process isolation )
cgroup : (share the same resource )

docker run --cpus=.5 ubuntu
docker run --memory=100m ubuntu
```

### Docker storage
```shell
/var/lib/docker
Image
Containers
volumes
https://docs.docker.com/storage/storagedriver/
https://docs.docker.com/storage/

$ docker volume create data_volume
$ docker run -v data_volume:/var/lib/mysql mysql
```

### ##Docker Networking
Bridge: default network a container get attached to it and get internal IPs
`	$ docker run ubuntu
None : 
	$ docker run ubuntu --network=none
Host :
	$ docker run ubuntu --network=host

	$ docker network ls
### Run Jenkins using Docker Image
```shell
docker run jenkins/jenkins
```
