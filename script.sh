sudo apt-get purge open-iscsi, apache2, mysql-server
wget https://github.com/Ohelig/ccdcfiles/raw/master/unauth.cfg --no-check-certificate
wget https://github.com/Ohelig/ccdcfiles/raw/master/script2.sh --no-check-certificate
mkdir /etc/update-manager/release-upgrades.d/
mv unauth.cfg /etc/update-manager/release-upgrades.d/unauth.cfg
vim /etc/fstab #nobootwait 
sudo do-release-upgrade
