EDITOR=nano visudo && gpasswd -a administrator sudo

echo 'deb http://archive.debian.org/debian/ lenny contrib main non-free' > /etc/apt/sources.list
echo 'deb http://archive.debian.org/debian-security lenny/updates main' >> /etc/apt/sources.list
apt-get update
apt-get install debian-archive-keyring
#apt-get install git-core
#apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

#wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb
#dpkg --install webmin_1.831_all.deb

apt-get purge samba*

apt-get update; apt-get upgrade;

crontab -r

apt-get install curl

curl -k https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/debian/grub.conf > /boot/grub/grub.conf

curl -k https://raw.githubusercontent.com/Ohelig/ccdcfiles/master/debian/menu.lst > /boot/grub/menu.lst

nano /var/www/config/db.inc.php
