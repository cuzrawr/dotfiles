#!/usr/bin/env bash
ip route del blackhole 0.0.0.0/8
ip route del blackhole 10.0.0.0/8
ip route del blackhole 172.16.0.0/12
ip route del blackhole 192.168.0.0/16
ip route del blackhole 100.64.0.0/10
ip route del blackhole 127.0.0.0/8
ip route del blackhole 127.0.53.53
ip route del blackhole 169.254.0.0/16
ip route del blackhole 192.0.0.0/24
ip route del blackhole 192.0.2.0/24
ip route del blackhole 198.18.0.0/15
ip route del blackhole 198.51.100.0/24
ip route del blackhole 203.0.113.0/24
ip route del blackhole 224.0.0.0/4
ip route del blackhole 240.0.0.0/4
ip route del blackhole 255.255.255.255/32
