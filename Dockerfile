FROM fedora
RUN dnf -y install iproute procps findutils iputils nmap-ncat selinux-policy-devel net-tools; dnf -y clean all
ADD pipe.sh install.sh setup.sh securepipe.* /root/
RUN cd /root; make -f /usr/share/selinux/devel/Makefile
LABEL INSTALL="podman run --rm --privileged -v /:/host -v /run:/run \$IMAGE /root/install.sh"
LABEL RUN="podman run --rm -ti --name \${OPT1} --security-opt label=type:\${OPT1}_t --security-opt label=filetype:\${OPT1}_file_t -v /run:/run \$IMAGE /root/pipe.sh \${OPT1}"
