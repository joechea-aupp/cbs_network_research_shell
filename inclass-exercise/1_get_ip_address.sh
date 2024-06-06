#!/bin/bash

local_ip=$( ip add s | grep -w inet | grep eth0 | awk '{print $2}' )

echo "your local ip address: $local_ip"

public_ip=$( curl -s ifconfig.me )

echo "your public ip address: $public_ip"

# country=$( curl -s ipinfo.io/country )
country=$(whois 203.176.133.182 | grep country | awk '{print $2}' | sort | uniq | head -n 1)

echo "your country: $country"
