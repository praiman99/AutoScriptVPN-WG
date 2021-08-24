#!/bin/bash
#Script by : PR Aiman

red='\e[1;31m'
green='\e[0;32m'
white='\e[0;37m'
NC='\e[0m'
clear
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                  AutoScriptVPN-WG by PR Aiman"
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                  [1] Create Account Wireguard"
echo -e "\e[0;37m                  [2] Delete Account Wireguard"
echo -e "\e[0;37m                  [3] Renew Account Wireguard"
echo -e "\e[0;37m                  [4] Change Timezone"
echo -e "\e[0;37m                  [x] Exit"
echo -e "\e[0m                                                   "
read -p "                Select From Options [1-4 or x] :  " menu
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
clear
case $menu in
		1)
		clear
		add-wg
		exit
		;;
		2)
		clear
		del-wg
		exit
		;;
		3)
		clear
		renew-wg
		exit
		;;
		4)
		clear
		change_timezone
		exit
		;;
		x)
		clear
		exit
		;;
	esac
