# securepipe
Demonstration of setting up a secure pipe using containers and SELinux

## Install Required software

dnf install docker atomic buildah
systemctl start docker

## Build securepipe container image

buildah bud -t securepipe .
buildah push securepipe docker-daemon:securepipe:latest

or 

docker build -t securepipe .

## Install securepipe container image

atomic install securepipe

## Run securepipes

In three different terminals execute:

/tmp/setup.sh sp3
/tmp/setup.sh sp2
/tmp/setup.sh sp1

Now type into the terminal running sp1, and you will see output in sp3

You can also cat entire files to sp1

cat /etc/passwd | /tmp/setup.sh sp1

## Attempt to breakout of securepipes

In a fourth terminal execute

docker exec -ti sp1 sh

And play around
