#!/bin/sh

# svscan_enable         Set to "YES" to run svscan.
sysrc svscan_enable=yes

# svscan_servicedir     The directory containing the various service.
#                       directories to be monitored.  Professor Daniel J.
#                       Bernstein recommends "/service", but the FreeBSD
#                       port has a default of "/var/service" instead, which
#                       is consistent with the FreeBSD filesystem hierarchy
#                       guidelines as described in the hier(7) manual page.
sysrc svscan_servicedir=/var/service

# svscan_logdir         If set, then svscan will not log its output through
#                       readproctitle, but through multilog instead, and
#                       the logs will be placed in the specified directory.
#                       The FreeBSD port default is to run svscan through
#                       readproctitle.
sysrc svscan_logdir=/var/log/svscan

# svscan_lognum         The number of logfiles that multilog will keep if
#                       svscan_logdir is set; the multilog default is 10.
sysrc svscan_lognum=7

# svscan_logmax         The maximum logfile size for multilog if svscan_logdir
#                       is set; the multilog default is 99999.
sysrc svscan_lognum=99999

service svscan start
