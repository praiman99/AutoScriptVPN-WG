#!/bin/bash
# Script by : PR Aiman
clear

echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    [1] Malaysia (GMT +8:00)"
echo -e "\e[0;37m                    [2] Indonesia (GMT +7:00)"
echo -e "\e[0;37m                    [3] Singapore (GMT +8:00)"
echo -e "\e[0;37m                    [4] Brunei (GMT +8:00)"
echo -e "\e[0;37m                    [5] Thailand (GMT +7:00)"
echo -e "\e[0;37m                    [6] Philippines (GMT +8:00)"
echo -e "\e[0;37m                    [7] India (GMT +5:30)"
echo -e "\e[0;37m                    [8] Japan (GMT +9:00)"
echo -e "\e[0;37m                    [9] View Current Time Zone"
echo -e "\e[0;37m                    [10] back"
echo -e "\e[0;37m                    [x] Exit"
echo -e "\e[0m                                                   "
read -p "              Select From Options [1-10 or x] : " Time
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
clear
case $Time in
		1)
		clear
		timedatectl set-timezone Asia/Kuala_Lumpur
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                   Time Zone Set Asia Malaysia  "
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		2)
		clear
		timedatectl set-timezone Asia/Jakarta
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                   Time Zone Set Asia Indonesia "
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		3)
		clear
		timedatectl set-timezone Asia/Singapore
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                   Time Zone Set Asia Singapore "
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		4)
		clear
		timedatectl set-timezone Asia/Brunei
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    Time Zone Set Asia Brunei   "
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		5)
		clear
		timedatectl set-timezone Asia/Bangkok
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                   Time Zone Set Asia Thailand  "
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		6)
		clear
		timedatectl set-timezone Asia/Manila
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                  Time Zone Set Asia Philippines"
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		7)
		clear
		timedatectl set-timezone Asia/Kolkata
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    Time Zone Set Asia India"
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
        8)
		clear
		timedatectl set-timezone Asia/Tokyo
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    AutoScript3in1 by PR Aiman   "
		echo -e "\e[0m                                                   "
		echo -e "\e[0;37m                    Time Zone Set Asia Japan"
		echo -e "\e[0m                                                   "
		echo -e "\e[1;31m     [*][*][*]======================================[*][*][*]"
		echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		9)
		clear
        echo ""
		timedatectl
	    echo ""
        read -sp " Press ENTER to go back"
        echo ""
        change_timezone
		;;
		10)
		clear
		menu
		exit
		;;
		x)
		clear
		exit
		;;
	esac