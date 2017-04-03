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

pre pridanie suborov do dockru je potrebne upravit Dockerfile.
Pre akekolvek problemy <xvasko12@stud.fit.vutbr.cz> / facebook / alebo sa pozrite do hlavicky hore.
