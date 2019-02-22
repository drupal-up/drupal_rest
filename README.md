# A Drupal 8 instance with all the example settings for a REST server.

## Create the docker containers

```
docker-compose up -d
```

## Install drupal inside of the container from the existing configuration.
```
docker exec -it drupal_8_rest_server_php scripts/docker/drupal_instance_install.sh
```

## Get one time login
```
docker exec -it drupal_8_rest_server_php scripts/docker/drupal_onetime_login.sh
```

## In order to be able to be able to request the REST API(e.g. from Postman) you would have to have in the /etc/hosts file the following line
```
127.0.0.1 drupal_rest.docker.localhost
```
