# IOS-Docker
sudo yum install -y docker

spustenie dockerfile(lowercase nazov/tag) :
```docker build -t nazov/tag .
```

nazov kontajneru
```docker inspect --format='{{.Name}}' $(sudo docker ps -aq --no-trunc)
```
output :
```
docker cp <nazov-kontajneru>:SOURCE_DIRECTORY/FILE DESTINATION_DIRECTORY
```
skopirujte z priecinku /opt vsetky subory do vami zadaneho priecinku pripadne do aktualneho priecinku (./) a v
subore vasa/cesta/output.txt najdete dockerom vygenerovane vysledky vasho projektu 1, projektu 2, a podobne.
Bezi to na CentOS 6.6 ako merlin, pre zmenu verzie pripadne zmenu OS nacitajte manual docker FROM <image-name>
