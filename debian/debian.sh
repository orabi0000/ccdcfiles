su -c 'EDITOR=nano visudo && gpasswd -a administrator sudo'


sudo echo 'deb http://archive.debian.org/debian/ lenny contrib main non-free' > /etc/apt/sources.list
sudo echo 'deb http://archive.debian.org/debian-security lenny/updates main' >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install debian-archive-keyring
sudo apt-get install git-core
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb
sudo dpkg --install webmin_1.831_all.deb

sudo apt-get purge samba*

sudo apt-get update; apt-get upgrade;

sudo crontab -r
