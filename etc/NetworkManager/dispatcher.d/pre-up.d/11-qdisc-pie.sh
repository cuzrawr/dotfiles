#!/usr/bin/env bash

# https://viliampucik.wordpress.com/2016/09/30/networkmanager-disable-sending-hostname-to-dhcp-server/

IFS=$'\n'
for i in $(grep ^id= /etc/NetworkManager/system-connections/*.nmconnection | cut -d= -f2); do \
    nmcli connection modify "$i" tc.qdiscs 'root noqueue'; \
done
echo "11111111111111111111111111111111111111111111111111112"
logger "loaded script test qdisc noqueue"
