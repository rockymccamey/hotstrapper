# hotstrapper

### Requirements
Docker

## Testing bootstrap scripts
Start by running the dockerup_ script in the root directory. This will build the image & run the hotstrap script against the container.

Example usage:
```bash
$ ./dockerup_centos_7.sh
Please make sure you are in the root directory of hopstrapper/
```

You can check the progress by running a docker logs.

Example:
```bash
echo "to tail -f: docker logs centos7 --follow"
echo "to take a peak: docker logs centos7"
```

### How it works
It's fairly straight forward, the dockerup scripts will create an image with the docker file located in docker/$DISTRO/$MAJOR_VERSION and add in the bootstrap script located in $DISTRO/$MAJOR_VERSION. It will then run the script & output to docker logs.

## Removing test containers
Run the dockerdown.sh to remove all docker containers related to hotstrapper:

Example usage:
```bash
$ ./dockerdown.sh
Killing off Centos7 container...
centos7
```



## Adding new images
Three things are required:
#### A Dockerfile
The Dockerfile must be located in docker/$DISTRO/$MAJOR_VERSION/Dockerfile
You can use docker/centos7/Dockerfile as a reference

#### Bootstrap script
The bootstrap script must be located in $DISTRO/$MAJOR_VERSION
You can use centos/7/hotstrap.py as a reference

#### A dockerup file
This is mostly to make things easier on us, you should be able to copy dockerup_centos_7.sh and change the distro / major variables to make it work for other images.

#### Add to the dockerdown file
If you create a dockerup script, be sure to add to the dockerdown.sh. Something along the lines of:

```bash
echo "Killing off $CONTAINER_NAME container..."
docker rm --force $CONTAINER_NAME
```
