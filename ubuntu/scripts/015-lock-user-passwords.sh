passwd -l daemon
passwd -l bin
passwd -l sys
passwd -l sync
passwd -l games
passwd -l man
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
passwd -l adam
passwd -l statd
passwd -l administrator
passwd -l ntp
passwd -l messagebus

echo Setting new password for $( whoami )...
passwd