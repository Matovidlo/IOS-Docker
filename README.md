# IOS-Docker

# Instalace
## [Centos](https://docs.docker.com/engine/installation/linux/fedora/#install-using-the-repository)
## [Windows](https://docs.docker.com/docker-for-windows/install)


## [Vytvoření image](https://docs.docker.com/engine/reference/commandline/build/)
`docker build  <path>`

**Argumenty:**  
`-t <název tagu>`: otaguje image podle argumentu přepínače   
`-f <path>` : Cesta k `Dockerfile` souboru, defaultně se hledá v argumentu příkazu


## [Spuštění kontejneru](https://docs.docker.com/engine/reference/run/)
`docker run <image_name>` vytváří nový kontejner z image a spustí ho, je to zkratka pro `docker create` a následný `docker start`  

**Argumenty:**  
`--rm` : kontejner se smaže automaticky po ukončení  
`--name <name>` : explicitní název kontejneru  
`-v <host_folder:container_folder>` nastaví přípojný bod z hosta na kontejner

## [Zobrazení kontejneru](https://docs.docker.com/engine/reference/commandline/ps/)
`docker ps` : zobrazí aktivní kontejnery  
`docker ps -a` : zobrazí všechny kontejnery, i neaktivní  

## [Smazání kontejnerů](https://docs.docker.com/engine/reference/commandline/rm/)
`docker rm <name|hash>` : smaže specifický kontejner  
`docker rm -f <name|hash>` : smaže specifický kontejner i když běží  
`docker rm -f $(docker ps -qa)` : smaže všechny kontajnery


## Ukázka použití

```
docker build -t ios-centos .  
docker run --rm --name ios-centos -v /$(pwd):/code ios-centos ./run.sh
```

**Docker build stačí spustit jen jednou !!!** Poté jen pouštíme kontejner (druhý příkaz)

S argumentem `-ti` spustí interaktivní kontejner

