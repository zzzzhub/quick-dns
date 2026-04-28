#!/bin/bash
# made by zzzz

DNS1="1.1.1.1"
DNS2="1.0.0.1"

echo "Set DNS"
networksetup -setdnsservers Wi-Fi $DNS1 $DNS2

echo "Flush"
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Verifying..."
dig google.com | grep "SERVER"

echo "Done, made by @2qp0"