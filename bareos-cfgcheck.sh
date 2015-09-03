#!/bin/bash -x

set -o nounset
set -o errexit

/usr/sbin/bareos-dir -f -t -c /etc/bareos/bareos-dir.conf 
/usr/sbin/bareos-fd -t -c /etc/bareos/bareos-fd.conf 
/usr/sbin/bareos-sd -t -c /etc/bareos/bareos-sd.conf 
/usr/sbin/bconsole -t -c /etc/bareos/bconsole.conf 
/usr/sbin/bat -t -c /etc/bareos/bat.conf 
