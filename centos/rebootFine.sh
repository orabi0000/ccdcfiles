#! /usr/bin/bash
wget http://download.openvz.org/openvz.repo
#mv openvz.repo /etc/yum.conf.d/
awk '/openvz-kernel-rhel5/{y=1}y' openvz.repo | sed '/openvz-kernel-rhel5-testing/,$d' | sed 's/enabled=0/enabled=1/g' > /etc/yum.conf.d/openvz.repo
rpm --import http://download.openvz.org/RPM-GPG-Key-OpenVZ
yum install ovzkernel.$(uname --machine)
cp /etc/grub.conf /etc/grub.conf.bak

