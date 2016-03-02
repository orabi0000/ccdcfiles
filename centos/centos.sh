#!/bin/bash
passwd
passwd -l sync
passwd -l news
#passwd -l mysql
passwd -l administrator
passwd -l tomcat
service sshd stop
service capi stop
service dropbox stop
service dovecot stop
service named stop
service cups stop
service wpa_supplicant stop
service proftpd stop
service ip6tables stop
chkconfig ip6tables off
chkconfig proftpd off
chkconfig wpa_supplicant off
chkconfig --del cups
chkconfig --level 15 off
chkconfig --del sshd
chkconfig --level 15 off
chkconfig --del capi
chkconfig --level 15 off
chkconfig --del dropbox
chkconfig --level 15 off
chkconfig --del dovecot
chkconfig --level 15 off
chkconfig --del named
chkconfig --level 15 off
yum remove bind* -y
yum remove sane* -y
yum remove cups -y
yum remove dropbox* -y
yum remove ldapjdk -y 
yum remove proftpd* -y
yum remove samba* -y
bash ./iptables.sh
