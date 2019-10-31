# Jupiter Docker
### Build Docker

```shell
$ docker build -t pcharoen/jupiter:1.2.15 .
```

### Run Docker

```shell
$ docker-compose up -d
```

### Stop Docker

```shell
$ docker-compose stop/down
```

### Push to DockerHub

```shell
$ docker login
$ docker push pcharoen/jupiter:1.2.15
```

### Setup Database
```shell
$ docker-compose run web rails db:migrate
$ docker-compose run web rails db:setup
```

### UI
```shell
http://localhost
```

### Fedora
```shell
http://localhost:8080/fcrepo
```

### OAI Provider
```shell
http://localhost:8080/fcrepo/rest/oai?verb=Identify
```

### Solr
```shell
http://localhost:8983
```


