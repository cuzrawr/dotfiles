
ip route del blackhole 172.16.0.0/12
ip route del blackhole 192.168.0.0/16






#
systemctl restart vmware-authd.service vmware-networks-configuration.service vmware-networks.service vmware-usbarbitrator.service

#
ip route add blackhole 172.16.0.0/12
ip route add blackhole 192.168.0.0/16

#
#chmod g+rw /dev/vmnet
echo "chmod g+rw /dev/vmnet[0-9]"


xfconf-query -c xfwm4 -p /general/use_compositing -s false
xfconf-query -c xfwm4 -p /general/vblank_mode -s off

vmware & sleep 10s && xfconf-query -c xfwm4 -p /general/use_compositing -s true ; xfconf-query -c xfwm4 -p /general/vblank_mode -s auto
