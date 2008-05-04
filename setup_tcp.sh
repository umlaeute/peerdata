#!/bin/sh

if [ "x$(whoami)" != "xroot" ]
then
 echo "you have to be <root> to run this script!"
 exit -1
fi

echo 1 > /proc/sys/net/ipv4/tcp_tw_recycle
