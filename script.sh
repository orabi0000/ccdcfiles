sudo apt-get remove open-iscsi
wget https://github.com/Ohelig/ccdcfiles/raw/master/unauth.cfg --no-check-certificate
mkdir /etc/update-manager/release-upgrades.d/
mv unauth.cfg /etc/update-manager/release-upgrades.d/unauth.cfg
vim /etc/fstab #nobootwait 
sudo do-release-upgrade
