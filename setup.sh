make -f /usr/share/selnux/devel/Makefile
semodule -i securepath.pp
mkdir -f /run/sp2 /run/sp3
chcon -t sp2_file_t /run/sp2
man mkdir
chcon -t sp3_file_t /run/sp3
