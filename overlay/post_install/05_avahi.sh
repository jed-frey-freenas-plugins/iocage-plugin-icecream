#!/bin/sh

sysrc dbus_enable=yes
service dbus start
sleep 5
sysrc avahi_daemon_enable=yes
sysrc avahi_dnsconfd_enable=yes

service avahi-daemon start
service avahi-dnsconfd start
