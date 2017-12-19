#!/bin/bash

elm-app build
printf "\nStopping container: "
docker stop integrated

printf "Deleting container: "
docker rm integrated

printf "\nCreating container\n"
docker run -d -P -v $PWD/build:/usr/share/nginx/html --name integrated nginx

printf "\nGo to localhost:PORT_NAME\n"
docker port integrated
