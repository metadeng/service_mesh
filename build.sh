#!/usr/bin/env bash
nettools=`which ifconfig`
#$nettools | grep en0 | awk 'NR==1{print}'
local_net=`$nettools  |grep -v 127.0.0.1 | grep -v inet6 | awk '{print $2}' | tr -d "addr:"`
echo $local_net