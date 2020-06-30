#!/bin/bash
# Spin up a dev environment to run HEAT bootstrapping scripts.

distro=centos
major=7

echo -e "Please make sure you are in the root directory of hopstrapper/\n"

echo -e "\n$distro $major: Building image..."
docker build --rm -t "$distro$major" -f docker/"$distro$major"/Dockerfile .

echo -e "\n$distro $major: Starting Container..."
docker run -d --restart=always -p 8080:80  --name=centos7 "$distro$major"

echo -e "\n$distro $major: Container running. Use the following to check logs:"
echo "to tail -f: docker logs $distro$major --follow"
echo "to take a peak: docker logs $distro$major"
# docker exec centos7
#
# # docker exec -it centos7 /bin/bash
#
# docker exec centos7 git clone https://github.com/kmcjunk/hotstrapper.git
# docker exec centos7 python hotstrapper/rhel/7/hotstrap.py
