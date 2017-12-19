#!/bin/bash

elm-app build
printf "\nStopping container: "
docker stop standalone

printf "Deleting container: "
docker rm standalone

printf "\nCreating container\n"
docker run -d -P -v $PWD/build:/usr/share/nginx/html --name standalone nginx

printf "\nGo to localhost:PORT_NAME\n"
docker port standalone
