#!/sbin/sh

BPATH=`find /sys -name brightness`
cd /
ln -s $BPATH brightness
