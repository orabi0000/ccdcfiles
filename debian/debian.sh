cat 'deb http://archive.debian.org/debian/ lenny contrib main non-free' > /etc/apt/sources.list
cat 'deb http://archive.debian.org/debian-security lenny/updates main' >> /etc/apt/sources.list
apt-get update
apt-get install debian-archive-keyring
apt-get install git-core


