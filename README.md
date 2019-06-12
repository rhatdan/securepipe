# securepipe
Demonstration of setting up a secure pipe using containers and SELinux. These scripts were last tested on Fedora 27.

## Install Required software
`````
$ sudo dnf install podman
`````

## Build securepipe container image
`````
$ git clone https://github.com/rhatdan/securepipe.git && cd securepipe/
$ sudo podman build bud -t securepipe .
`````

## Install securepipe container image
`````
$ sudo podman runlabel install securepipe
`````

## Run securepipes

In three different terminals execute:

Terminal 3:
`````
$ sudo /tmp/setup.sh sp3
`````

Terminal 2:
`````
$ sudo /tmp/setup.sh sp2
`````

Terminal 1:
`````
$ sudo /tmp/setup.sh sp1
`````

Now type into the terminal running sp1, and you will see output in sp3

You can also cat entire files to sp1
`````
$ sudo cat /etc/passwd | /tmp/setup.sh sp1
`````

## Attempt to breakout of securepipes

In a fourth terminal execute
`````
$ sudo podman exec -ti sp1 sh
`````
And play around
