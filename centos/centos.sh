#!/bin/bash
authconfig --passalgo=sha512 --update
passwd
passwd -l sync
passwd -l news
#passwd -l mysql
passwd -l administrator
passwd -l tomcat
chattr +i /etc/passwd
chattr +i /etc/shadow
service sshd stop
service capi stop
service dropbox stop
service dovecot stop
service named stop
service cups stop
service wpa_supplicant stop
service proftpd stop
service ip6tables stop
service sendmail stop
service portmap stop
chkconfig --del portmap
chkconfig --level 15 portmap off
chkconfig sendmail off
chkconfig --del sendmail
chkconfig --level 15 sendmail off
chkconfig ip6tables off
chkconfig proftpd off
chkconfig wpa_supplicant off
chkconfig --del cups
chkconfig --level 15 cups off
chkconfig --del sshd
chkconfig --level 15 sshd off
chkconfig --del capi
chkconfig --level 15 capi off
chkconfig --del dropbox
chkconfig --level 15 dropbox off
chkconfig --del dovecot
chkconfig --level 15 dovecot off
chkconfig --del named
chkconfig --level 15 named off
rpm -e bind* 
rpm -e sane*
rpm -e cups
rpm -e dropbox*
rpm -e ldapjdk 
rpm -e proftpd*
rpm -e samba*

crontab -r

echo 'change Ubuntu mysql db'
#sed -i '/^var $host = 'db.team.local do the stuffs
wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/epel-release-5-4.noarch.rpm --no-check-certificate

#wget http://download.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
rpm -ivh ./epel-release-5-4.noarch.rpm
cd
yum makecache
yum -C install yum-fastestmirror -y
yum -C install yum-presto -y
yum -C install shorewall -y
#wget wget http://prdownloads.sourceforge.net/webadmin/webmin-1.780-1.noarch.rpm

yum -y -C install perl perl-net-ssleay openssl perl-io-tty fail2ban

wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/webmin-1.780-1.noarch.rpm --no-check-certificate
rpm -U ./webmin-1.780-1.noarch.rpm

echo 'net.ipv6.conf.all.disable_ipv6=1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.default.disable_ipv6=1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.lo.disable_ipv6=1' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.log_martians=1' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.log_martians=1' >> /etc/sysctl.conf
echo 'net.ipv4.icmp_ignore_bogus_error_responses=1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_max_syn_backlog=4096' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_syncookies=1' >> /etc/sysctl.conf
#net.ipv4.icmp_echo_ignore_broadcasts=1
echo 'net.ipv4.conf.all.accept_redirects=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.accept_redirects=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.secure_redirects=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.secure_redirects=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.accept_source_route=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.accept_source_route=0' >> /etc/sysctl.conf
echo 'net.ipv4.ip_forward=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.send_redirects=0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.send_redirects=0' >> /etc/sysctl.conf
echo 'kernel.dmesg_restrict=1' >> /etc/sysctl.conf
echo 'kernel.kptr_restrict=1' >> /etc/sysctl.conf
echo 'net.core.bpf_jit_enable=0' >> /etc/sysctl.conf
echo 'kernel.yama.ptrace_scope=1' >> /etc/sysctl.conf
echo 'fs.protected_hardlinks=1' >> /etc/sysctl.conf
echo 'fs.protected_symlinks=1' >> /etc/sysctl.conf
echo 'kernel.randomize_va_space=2' >> /etc/sysctl.conf

sysctl -p
wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/iptables.sh --no-check-certificate
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
bash ./iptables.sh

rpm -e imagemagick -y
rpm -e dovecot -y
rpm -e evolution -y
rpm -e gimp -y
rpm -e openoffice -y
rpm -e portmap -y
rpm -e rhythmbox -y

yum -C install mod_security -y

yum update
