Repoet inneholder to tomme elm-apper som deler kode. `integrated/` inneholder en app som skal kjøres integrert i Gosys, `standalone/` inneholder en app som skal linkes til fra Gosys, men som skal kjøres for seg selv. `common/` inneholder kode som deles av applikasjonene.

# Installasjon

1. Installer [node](https://nodejs.org/en/)
2. Installer [docker](https://www.docker.com/docker-mac)
3. Installer `create-elm-app`, på følgende måte:

```
npm install create-elm-app -g
```

# Kjøring under utvikling

I enten `integrated/` eller `standalone/` kjør følgende kommando:

```
elm-app start
```

# Bygging og kjøring med Docker

Kjør følgende kommando i roten av Git-repoet for å bygge Docker-containeren:

```
docker build -t gosys-elm .
```

Deretter kan du starte opp containeren:

```
docker run --interactive --tty --rm --publish 8080:80 gosys-elm 
```

Applikasjonene kjører nå på:

* http://localhost:8080/standalone/
* http://localhost:8080/integrated/
