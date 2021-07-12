#!/usr/bin/env bash
ip route add blackhole 0.0.0.0/8 2>/dev/null
ip route add blackhole 10.0.0.0/8 2>/dev/null
ip route add blackhole 172.16.0.0/12 2>/dev/null
ip route add blackhole 192.168.0.0/16 2>/dev/null
ip route add blackhole 100.64.0.0/10 2>/dev/null
ip route add blackhole 127.0.0.0/8 2>/dev/null
ip route add blackhole 127.0.53.53 2>/dev/null
ip route add blackhole 169.254.0.0/16 2>/dev/null
ip route add blackhole 192.0.0.0/24 2>/dev/null
ip route add blackhole 192.0.2.0/24 2>/dev/null
ip route add blackhole 198.18.0.0/15 2>/dev/null
ip route add blackhole 198.51.100.0/24 2>/dev/null
ip route add blackhole 203.0.113.0/24 2>/dev/null
ip route add blackhole 224.0.0.0/4 2>/dev/null
ip route add blackhole 240.0.0.0/4 2>/dev/null
ip route add blackhole 255.255.255.255/32 2>/dev/null
