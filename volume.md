# General
Volumes are persistent data shared between containers. Able to outlive those containers.
A container can be mounted instead of a already existing directory to be used instead of it.

## Create
> docker volume create <volume_name>

## Delete
> docker volume rm <volume_name>

## Use
> docker run -v <volume_name>:<mount_point>
