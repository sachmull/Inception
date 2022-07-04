# General
Use a docker network so multiple containers can act like they are all in the same network

## Create
> docker network create <network_name>

## Connect
> docker network connect <network_name> <container_name>

## Disconnect
> docker network disconnect <network_name> <container_name>

## List all networks
> docker network ls

## Inspect a network for additional info
> docker network inspect <network_name>
