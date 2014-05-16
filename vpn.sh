#!/usr/bin/env zsh

while true; do
  VPN=$(ifconfig | grep tun0 | wc -l)
  if [[ $VPN != 0 ]]; then
    touch ~/.vpnon
  else
    rm -f ~/.vpnon
  fi
  sleep 1
done
