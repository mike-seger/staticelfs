#!/bin/bash

set -e

docker rmi --force centoslatest
rm -fR bin.tmp
name=N$(date +%s)
docker build -t centoslatest .
docker run --name $name -d centoslatest /bin/bash
#docker run --name $name -i -t centoslatest /bin/bash
mkdir bin.tmp
docker cp $name:/opt/bin/. bin.tmp
docker rmi --force centoslatest
mv bin bin.old
mv bin.tmp bin
rm -fR bin.old
