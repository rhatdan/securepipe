#!/bin/sh 
# Makesure /run directory exist and is labeled correctly
rm -rf /run/$1
mkdir -p /run/$1
chcon -t $1_file_t /run/$1

# Excute the pipe associted with the container
docker run --rm -ti --name $1 --security-opt label=type:$1_t -v /run:/run securepipe /root/pipe.sh $1
