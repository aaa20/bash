#!/bin/bash
vmid=400
template=/var/lib/vz/template/cache/ubuntu-22.04-standard_22.04-1_amd64.tar.zst
vmname=game01
ip=192.168.89.80/24
storage_cnt=two:20
rootpw="1Q2w3e4r"
core=2
ram="1024"
nameserver="8.8.8.8"
gateway="192.168.89.1"
bridge="vmbr0"
if="eth0"


pct create $vmid $template --cores $core --rootfs $storage_cnt --hostname $vmname --memory $ram --nameserver $nameserver --password $rootpw --net0 name=$if,ip=$ip,gw=$gateway,bridge=$bridge

pct start $vmid

echo -e "\033[34m -- Start APT update"
echo -e "\033[37m "
pct exec $vmid -- bash -c "apt update && apt upgrade -y"

echo -e "\033[34m Create LXC ID " $vmid " name " $vmname  " is completed"
echo -e "\033[37m "
