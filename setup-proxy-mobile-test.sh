#!/bin/bash
#make sure to BURP or other proxy is running
port=$1
#change above with your test interface
ip=$(ip addr show YOUR-INTERFACE-HERE | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
if [[ -n "$port" ]]; then
  adb shell settings put global http_proxy $ip:$port
else
    echo "Please enter the port no name"
fi
