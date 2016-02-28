authconfig --passalgo=sha512 --update
passwd
passwd -l daemon
passwd -l bin
passwd -l sys
passwd -l sync
passwd -l games
passwd -l ban
passwd -l lp
passwd -l mail
passwd -l news
passwd -l uucp
passwd -l proxy
passwd -l www-data
passwd -l backup
passwd -l list
passwd -l irc
passwd -l gnats
passwd -l nobody
passwd -l libuuid
passwd -l dhcp
passwd -l syslog
passwd -l klog
passwd -l bind
passwd -l sshd
passwd -l adam
passwd -l mysql
passwd -l statd
passwd -l administrator
passwd -l ntp
wget https://veil.us.to/ubuntu.repos --no-check-certificate
sudo cat ubuntu.repos > /etc/apt/sources.list
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get update
sudo apt-get do-release-upgrade -y
sudo apt-get update
sudo apt-get upgrade -y
