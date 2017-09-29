FROM fedora
RUN dnf -y install procps findutils iputils nmap-ncat selinux-policy-devel; dnf -y clean all
ADD pipe.sh install.sh setup.sh container.* securepipe.* /root/
RUN cd /root; make -f /usr/share/selinux/devel/Makefile
LABEL INSTALL="docker run --rm --privileged -v /:/host -v /run:/run \$IMAGE /root/install.sh"
LABEL RUN="docker run --rm -ti --name \${OPT1} --security-opt label=type:\${OPT1}_t -v /run:/run \$IMAGE /root/pipe.sh \${OPT1}"
