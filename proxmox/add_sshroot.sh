#!/bin/bash

if [ "$1" == "" ]; then
  echo "Enter container PID"
  exit 1
fi

pct exec $1 -- bash -c "echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config"
pct exec $1 -- bash -c "systemctl restart sshd"
