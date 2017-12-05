#!/bin/bash

# symlink 70-hotswaphdd.rules to /etc/udev/rules.d/
cd /etc/udev/rules.d/
ln -s /var/www/udev-infopanel/70-udev-infopanel.rules
udevadm control --reload-rules

# symlink udev-infopanel.sh to /usr/bin 
chmod a+x /var/www/udev-infopanel/udev-infopanel.sh
cd /usr/bin/
ln -s /var/www/udev-infopanel/udev-infopanel.sh
