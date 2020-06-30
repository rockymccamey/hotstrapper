# hotstrapper

### Requirements
Docker

## Testing bootstrap scripts
Start by running the dockerup_ script in the root directory. This will build the image & run the hotstrap script against the container.

Example usage:
```bash
$ ./dockerup_rhel_7.sh
Please make sure you are in the root directory of hopstrapper/
```

You can check the progress by running a docker logs.

Example:
```bash
echo "to tail -f: docker logs centos7 --follow"
echo "to take a peak: docker logs centos7"
```


## Removing test containers
Run the dockerdown.sh to remove all docker containers related to hotstrapper:

Example usage:
```bash
$ ./dockerdown.sh
Killing off Centos7 container...
centos7
```



## Adding new images
Two things are required:
#### A Dockerfile
The Dockerfile must be located in docker/$DISTRO/$MAJOR_VERSION/Dockerfile

#### Bootstrap script
The bootstrap script must be located in $DISTRO/$MAJOR_VERSION
