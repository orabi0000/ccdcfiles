#!/bin/bash
passwd
chkconfig --del ssh
chkconfig --level 15 off
chkconfig --del capi
chkconfig --level 15 off
chkconfig --del dropbox
chkconfig --level 15 off
chkconfig --del dovecat
chkconfig --level 15 off
chkconfig --del named
chkconfig --level 15 off
yum remove bind*
yum remove sane*
yum remove cups*
yum remove dropbox*
yum remove ldapjdk
yum remove proftpd*
yum remove samba*

