# IOS-Docker
Skript install.sh pracuej s argumentovym suborom args.txt.
Pre zmenu arguemntov zmente obsah.
Automaticky spusta skript na danom virtualnom stroji a v output.txt je vystup vasho skriptu.
Pre pridanie suborov, priecinkov po vybuildeni docker obrazu pouzite.
```
docker run -ti ios bash
```
sudo yum install -y docker

spustenie dockerfile(lowercase nazov/tag) :
```
docker build -t nazov/tag .
```

nazov kontajneru
```
docker inspect --format='{{.Name}}' $(sudo docker ps -aq --no-trunc)
```
output :
```
docker cp <nazov-kontajneru>:SOURCE_DIRECTORY/FILE DESTINATION_DIRECTORY
```
skopirujte z priecinku /opt vsetky subory do vami zadaneho priecinku pripadne do aktualneho priecinku (./) a v
subore vasa/cesta/output.txt najdete dockerom vygenerovane vysledky vasho projektu 1, projektu 2, a podobne.
Bezi to na CentOS 6.6 ako merlin, pre zmenu verzie pripadne zmenu OS nacitajte manual docker FROM \<image-name>

## Example

vojdeme do priecinku a nakopirujeme dirgraph, ktory chceme testovat
```
cd docker-centos
cp /home/IOS/projekt1/dirgraph .
docker build -t iosProject .
docker run -ti ios bash
[vlozte lubovolny pocet adresarov a podobne, ukoncenie prehladavania obrazu : exit || Ctrl-D]
```
Prvy build je trosku dlhsi pockame.
Dalej si vytvorime kontajner a stiahneme si output nasho skriptu.
Pozn. pre upravu pouzite skript install.sh kde sa vypise na zaciatku a na konci "Starting script" a "End of script". Je to mozne zrusit je to obycajne echo
```
docker create --name ios iosProject bash
docker start -ai ios (mozete mat ine blbe nazvy kontajnerov)
docker cp ios:/opt/output.txt output.txt
```
Ak nastala nejaka chyba mal by docker v builde vyhlasit dany problem.

## Any other usage
Ak uz mame vytvoreny jak container tak aj virtualku mozeme k nej este pristupovat znova pomocou prikazu run inak staci pustit build kde sa nakopiruje novy dirgraph a v output.txt zase najdeme vystup skriptu.
```
docker build -t ios .
docker cp ios:/opt/output.txt output.txt
```
