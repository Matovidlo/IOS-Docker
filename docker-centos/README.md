# Ak je problem s obrazmi
Zmazeme prikazmi dole
```
docker rm $(docker ps -aq)
docker rmi $(docker images | awk {'print $3'})
```

# Projekt 2.
Demand: Makefile zdrojaky a `proj2.zip` nazov balicku ( Inspirativny Makefile v tomto subore )
Makefile, potrebne featury, `zip`:
```
proj2.zip: $(wildcard *.c) $(wildcard *.h) Makefile
	zip $@ $^
```
spustit docker file prikazmi dole, vytvorit kontajner a vytiahnut si output. STDOUT to ukazuje pri kompilovani Dockerfile
```
docker build -t ios2
docker create --name ios ios2 bash
docker start -ai ios (mozete mat aj iny nazov kontajnera staci zmenit name, `ios2` je nazov docker virtual)
docker cp ios:/opt/proj2.out proj2.out
```

## To je vsetko co pre tento projekt treba spravit
Maknut do pouzitelnej binarky a zobrat si vystup. Problem moze byt zly semafor a deadlock na systeme
```
Ctrl + C
```
Je moznost vyvoja applikacie vramci dockra
```
docker run -ti ios bash
vi proj2.c
```
#Pozor!
<b style='color:red'>UPOZORNENIE</b>.
pre upravovanie dockru musite po uprave urobit taku zvlastnu vec a to commitnut zmeny
```
docker ps -a ( vidite fejkovy nazov vasho kontajnera v ktorom su upravy je to hned ten navrchu)
docker commit <fejkovy-nazov-kontajnera> <nazov kontajnera v ktorom su zmeny>
docker run -ti <nazov kontajnera v ktorom su zmeny>
```
<b style='color:red'>Priklad</b>.
```
docker ps -a | head -n 2 = boring_mclean
docker commit boring_mclean ios
docker run -ti ios bash
```
pre pridanie suborov do dockru je potrebne upravit Dockerfile.
Pre akekolvek problemy <xvasko12@stud.fit.vutbr.cz> / facebook / alebo sa pozrite do hlavicky hore.
