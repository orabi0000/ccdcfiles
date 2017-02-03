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
curl 'https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/centos/services.sh' > services.sh
bash services.sh
rpm -e bind* 
rpm -e sane*
rpm -e cups
rpm -e dropbox*
rpm -e ldapjdk 
rpm -e proftpd*
rpm -e samba*
yum -y erase squid
yum -y erase selinux-policy-targeted

crontab -r
mv /tmp/.ICE /tmp/.notICE

echo 'change Ubuntu mysql db'
#sed -i '/^var $host = 'db.team.local do the stuffs
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/epel-release-5-4.noarch.rpm --no-check-certificate
#curl -k https://github.com/Ohelig/ccdcfiles/raw/master/centos/epel-release-5-4.noarch.rpm > epel-release-5-4.noarch.rpm
wget --no-check-certificate https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/centos/epel-release-5-4.noarch.rpm

#wget http://download.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
rpm -ivh ./epel-release-5-4.noarch.rpm

yum makecache
#yum install yum-fastestmirror -y
#yum -C install yum-presto -y
#yum install shorewall -y
#wget wget http://prdownloads.sourceforge.net/webadmin/webmin-1.780-1.noarch.rpm

yum -y install perl openssl fail2ban
#perl-net-ssleay openssl perl-io-tty fail2ban

#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/webmin-1.780-1.noarch.rpm --no-check-certificate
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.831-1.noarch.rpm --no-check-certificate
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty

rpm -U webmin-1.831-1.noarch.rpm


echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.default.disable_ipv6 = 1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.log_martians = 1' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.log_martians = 1' >> /etc/sysctl.conf
echo 'net.ipv4.icmp_ignore_bogus_error_responses = 1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_max_syn_backlog = 4096' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_syncookies = 1' >> /etc/sysctl.conf
#net.ipv4.icmp_echo_ignore_broadcasts=1
echo 'net.ipv4.conf.all.accept_redirects = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.accept_redirects = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.secure_redirects = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.secure_redirects = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.accept_source_route = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.accept_source_route = 0' >> /etc/sysctl.conf
echo 'net.ipv4.ip_forward = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.all.send_redirects = 0' >> /etc/sysctl.conf
echo 'net.ipv4.conf.default.send_redirects = 0' >> /etc/sysctl.conf
echo 'kernel.dmesg_restrict = 1' >> /etc/sysctl.conf
#echo 'kernel.kptr_restrict = 1' >> /etc/sysctl.conf
#echo 'net.core.bpf_jit_enable = 0' >> /etc/sysctl.conf
#echo 'kernel.yama.ptrace_scope = 1' >> /etc/sysctl.conf
#echo 'fs.protected_hardlinks = 1' >> /etc/sysctl.conf
#echo 'fs.protected_symlinks = 1' >> /etc/sysctl.conf
echo 'kernel.randomize_va_space = 2' >> /etc/sysctl.conf

sysctl -p
#jkkwget https://github.com/Ohelig/ccdcfiles/raw/master/centos/iptables.sh --no-check-certificate
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
#wget https://github.com/Ohelig/ccdcfiles/raw/master/centos/
#bash ./iptables.sh

rpm -e imagemagick
rpm -e dovecot
rpm -e evolution
rpm -e gimp
rpm -e openoffice
rpm -e portmap
rpm -e rhythmbox

#echo '/dev/VolGroup00/LogVol000 /			ext3	defaults			1 1' > /etc/fstab
#echo 'LABEL=/boot				/boot		ext3	defaults			1 3' >> /etc/fstab
#echo 'tmpfs						/dev/shm	tmpfs	noexec,nodev,nosuid	0 0' >> /etc/fstab
#echo 'devpts					/dev/pts	devpts	gid=5,mode=620		0 0' >> /etc/fstab
#echo 'sysfs						/sys 		sysfs	defaults			0 0' >> /etc/fstab
#echo 'proc						/proc 		proc 	defaults 			0 0' >> /etc/fstab
#echo '/dev/VolGroup00/LogVol01	swap		swap 	defaults			0 0' >> /etc/fstab

yum -y install apache*
yum -y install tomcat5
#yum install mod_security -y
#vim /var/www/html/confi*
service tomcat5 restart
service apache* restart

yum -y install tcptrack iotop nethogs

yum -y update
yum -y upgrade

mv /usr/bin/nc /usr/bin/openldap

echo "echo 'These are not the droids you'\'re looking for'" > /usr/bin/nc
echo "echo 'Look behind you'" > /usr/bin/netcat
echo "echo 'It'\'s getting closer'" > /usr/bin/ncat

chmod +x /usr/bin/nc
chmod +x /usr/bin/ncat
chmod +x /usr/bin/netcat

chattr +i /usr/bin/nc
chattr +i /usr/bin/ncat
chattr +i /usr/bin/netcat

curl -k https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/centos/iptables > /etc/sysconfig/iptables
curl -k https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/centos/ip6tables > /etc/sysconfig/ip6tables
service iptables restart

useradd -m v
passwd v
EDITOR=vim visudo
gpasswd -a sudo v
echo 'switch to v and lock root'
