sudo apt-get remove open-iscsi
wget https://github.com/Ohelig/ccdcfiles/raw/master/unauth.cfg --no-check-certificate
mv unauth.cfg /etc/update-manager/release-upgrades.d/unauth.cfg
sudo do-release-upgrade
sudo apt-get install linux-image-3.0.0-32-generic-pae
sudo do-release-upgrade
