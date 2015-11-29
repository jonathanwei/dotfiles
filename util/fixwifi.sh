#!/bin/bash

if [[ $UID != 0 ]]; then
  sudo $0 $*
  exit 1
fi

service network-manager stop
rm /var/lib/NetworkManager/NetworkManager.state
service network-manager start
