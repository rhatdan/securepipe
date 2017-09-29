# securepipe
Demonstration of setting up a secure pipe using containers and SELinux

## Install Docker

dnf install docker
systemctl start docker
systemctl enable docker

## Build

docker build -t securepipe .

## Install

atomic install securepipe

## Run

In three different terminals execute:

/tmp/setup.sh sp3
/tmp/setup.sh sp2
/tmp/setup.sh sp1

Now type into the terminal running sp1, and you will see output in sp3

In another fourth terminal execute

## Attempt to breakout

docker exec -ti sp1 sh

And play around
