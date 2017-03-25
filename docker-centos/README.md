# Ak je problem s obrazmi
Zmazeme prikazmi dole
```
docker rm $(docker ps -aq)
docker rmi $(docker images | awk {'print $3'})
```
