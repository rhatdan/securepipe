FROM fedora
RUN dnf -y install procps iputils nmap-ncat selinux-policy-devel; dnf -y clean all
ADD securepipe.* /root
RUN cd /root; make -f /usr/share/selinux/devel/Makefile

