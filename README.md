# README

### init dev-database 

```
docker run -d --name workwork-dev-db -e POSTGRES_USER=workwork -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=workwork_dev -e PGDATA=/var/lib/postgresql/data/pgdata -v workwork-data:/var/lib/postgresql/data --network=network1 postgres:14
```

### init dev-database 

```
docker start workwork-dev-db
```


