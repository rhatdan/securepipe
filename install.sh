#!/bin/sh -x
cp /root/setup.sh /root/container.pp /root/securepipe.pp /host/tmp
chroot /host semodule -X 400 -i /tmp/securepipe.pp tmp/container.pp
