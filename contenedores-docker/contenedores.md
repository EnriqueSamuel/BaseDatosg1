# Contenedores de sistemas gestores de Base de Datos

![ImagenDocker](./img/Docker-Logo-2013.png)

## contenedor imagenes 
> comandos para cada imagen
- comando para descargar imagen de postgres 

```
docker pull postgres:14.22-trixie
```
> Descargar imagen de tutorial de docker 

````
docker pull docker/getting-started

````
## Creacion de contenedores
````Docker 
docker run -d -p 80:80 "Nombre de la  imagen"

-d detach (Backgorund segundo plano)
-p puerto (El primer puerto no se cambia, el segundo si lo podemos cambiar)
````

## Contenedor de tutorial de Docker
docker run -d -p 80:80 docker/getting-started:latest "se uso el nombre de la imagen"
docker run -d -p 80:81 d79336

"No se pueden ser los mismos puertos osea el segundo numero tienen que ser diferentes"

## Contenedor de Maria DB sin volumen
````
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 e0236
````

## Contenedor de Maria DB con volumen
````docker 
docker volume create v-mariadbG1

docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbG1:/val/lib/mysql e0236
````
## Contenedor de postgres con volumen
````docker 
docker volume create v-postgresG1

docker run -d --name Server-PostgresG1 -p 5432:5432 -e POSTGRES_PASSWORD=123456 -v v-postgresG1:var/lib/postgresql/data bbb88
````



## Comandos docker 

| Comando | Descripcion |
| :--- | :--- |
| **docker --version**| _Muestra la vercion del Docker_ |
| **docker pull nombre_imagen**| _Muestra la imagen de Docker Hub [Docekr Hub](https://hub.docker.com "Buscador")_ |
| **docker images**| _Muestra las imagenes descargadas_ |
| **docker run**| _Permite crear un contenedor_ |
| **docker ps**| _Visualiza los contenedores que estan en ejecucion_ |
| **docker container ls**| _Visualiza los contenedores que estan en ejecucion_ |
| **docker ps -a**| _Visualiza todos los contenedores_ |
| **docker container ls -a**| _Visualiza todos los contenedores_ |
| **docker rm (nombre o id del conteneodr)**| _Borra un contenedor_ |
| **docker rm -f (nombre o id del conteneodr)**| _Borra un contenedor pero a la fuerza estando activo_ |
| **docker stop nombre_contenedor**| _Detener un contenedor (su ejecucion)_ |
| **docker start nombre_contenedor**| _Activar un contenedor que esta detenido_ |
| **docker volume ls**| _Mostra los volumenes que existen en docker_ |









