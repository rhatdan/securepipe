# securepipe
Demonstration of setting up a secure pipe using containers and SELinux

## Install Docker

dnf install docker
systemctl start docker
systemctl enable docker

## Install Atomic

dnf install atomic 

## Build

buildah bud -t securepipe .
docker build -t securepipe .

## Install

atomic install securepipe

## Run

In three different terminals execute:

/tmp/setup.sh sp3
/tmp/setup.sh sp2
/tmp/setup.sh sp1

Now type into the terminal running sp1, and you will see output in sp3

You can also cat entire files to sp1

cat /etc/passwd | /tmp/setup.sh sp1

## Attempt to breakout

In a fourth terminal execute

docker exec -ti sp1 sh

And play around
