#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
white='\e[0;37m'
NC='\e[0m'

MYIP=$(curl -s ipinfo.io/ip);
clear
source /etc/wireguard/params
	NUMBER_OF_CLIENTS=$(grep -c -E "^### Client" "/etc/wireguard/$SERVER_WG_NIC.conf")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo -e "\e[1;31m You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo -e "\e[0;37m Select the existing client you want to remove"
	echo -e "\e[0;37m Press CTRL+C to return"
	echo -e "\e[1;31m[*][*][*]===============================[*][*][*]"
	echo -e "\e[0;37m     No  Expired   User"
	grep -E "^### Client" "/etc/wireguard/$SERVER_WG_NIC.conf" | cut -d ' ' -f 3-4 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done

	# match the selected number to a client name
	CLIENT_NAME=$(grep -E "^### Client" "/etc/wireguard/$SERVER_WG_NIC.conf" | cut -d ' ' -f 3-4 | sed -n "${CLIENT_NUMBER}"p)
	user=$(grep -E "^### Client" "/etc/wireguard/$SERVER_WG_NIC.conf" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
	exp=$(grep -E "^### Client" "/etc/wireguard/$SERVER_WG_NIC.conf" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)

	# remove [Peer] block matching $CLIENT_NAME
	sed -i "/^### Client $user $exp/,/^AllowedIPs/d" /etc/wireguard/wg0.conf
	# remove generated client file
	rm -f "/home/vps/public_html/$user.conf"

	# restart wireguard to apply changes
	systemctl restart "wg-quick@$SERVER_WG_NIC"
	service cron restart
clear
echo ""
echo -e "\e[0;37m Wireguard Account Deleted Successfully"
echo -e "\e[1;31m[*][*][*]==========================[*][*][*]"
echo -e "\e[0;37m Client Name : $user"
echo -e "\e[0;37m Expired  On : $exp"
echo -e "\e[1;31m[*][*][*]==========================[*][*][*]"
echo ""
read -sp " Press ENTER to go back"
echo ""
menu
