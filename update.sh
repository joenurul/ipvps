#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo "Start Update"
# update
cd /usr/bin

wget -O v2raay "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/v2raay.sh"
wget -o bbr "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/bbr.sh"
wget -O l2tp "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/l2tp.sh"
wget -O ssh "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/sstpp.sh"
wget -O trojaan "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/trojaan.sh"
wget -O vleess "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/vleess.sh"
wget -O wgr "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/wgr.sh"
wget -O menu "https://raw.githubusercontent.com/Dimas1441/ipvps/main/update/menu.sh"
wget -O ssh-vpn "https://raw.githubusercontent.com/Dimas1441/ipvps/main/ssh-vpn.sh"
wget -O add-trgo "https://raw.githubusercontent.com/Dimas1441/ipvps/main/add-trgo.sh"
chmod +x v2raay
chmod +x bbr
chmod +x trojaan
chmod +x sstpp
chmod +x vleess
chmod +x wgr
chmod +x ssssr
chmod +x ssh
chmod +x l2tp
chmod +x add-trgo
echo "done"
