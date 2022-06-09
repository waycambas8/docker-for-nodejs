# DOCKER FOR NODE JS

Include : 

- MongoDB
- MariaDB
- Express generator

### HOW TO INSTALL

```
cp .env.example .env
cp environments/.env.example environments/.env

cd images/application

docker build . --tag=waycambas/star-ecosystem

cd ../../

docker rm -f $(docker ps -a -q)
docker-compose -f docker-compose-application.yml up --force-recreate
```

### HOW TO RUN

- Application
http://localhost

- MariaDB and MongoDB
setting username, password and port in .env