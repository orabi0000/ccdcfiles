sudo apt-get purge open-iscsi, apache2, mysql-server, mysql-client, mysql-common, mysql-client-5.0, mysql-server-5.0
wget https://github.com/Ohelig/ccdcfiles/raw/master/unauth.cfg --no-check-certificate
wget https://github.com/Ohelig/ccdcfiles/raw/master/script2.sh --no-check-certificate
mkdir /etc/update-manager/release-upgrades.d/
mv unauth.cfg /etc/update-manager/release-upgrades.d/unauth.cfg
vim /etc/fstab #comment out the problem
sudo do-release-upgrade
#have fun :)