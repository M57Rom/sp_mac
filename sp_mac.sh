#!/bin/bash

#---------------------------------------------------------------------------------------
### DESCRIPTION:
# The sp_mac script begun by M57R0m in 2020. it can help you to SPOOF_mac easy.
# Use it, ONLY FOR EDUCATIONAL PURPOSES.                               en-fr
#---------------------------------------------------------------------------------------

#Regular Colors
Black='\e[0;30m'              # Black
Red='\e[0;31m'                # Red
Green='\e[0;32m'              # Green
Yellow='\e[0;33m'             # Yellow
Blue='\e[0;34m'               # Blue
Purple='\e[0;35m'             # Purple
Cyan='\e[0;36m'               # Cyan
White='\e[0;37m'              # White

#Blod
BBlack='\e[1;30m'             # Blod Black
BRed='\e[1;31m'               # Blod Red
BGreen='\e[1;32m'             # Blod Green
BYellow='\e[1;33m'            # Blod Yellow
BBlue='\e[1;34m'              # Blod Blue
BPurple='\e[1;35m'            # Blod Purple
BCyan='\e[1;36m'              # Blod Cyan
BWhite='\e[1;37m'             # Blod White

# Default
DColor='\e[39m'         # Default foreground color
###     *********RS='$(tput )'                            <----------------------
clear

#################################################
#             Verify Desktop Folder             #
#################################################
	if [ $(ls ~ | grep Desktop) != "" ]
	then
		Desktop_PATH=~/Desktop
	elif [ $(ls ~ | grep Bureau) != "" ]
	then
		Desktop_PATH=~Bureau

	else
		Desktop_PATH=~
	fi
#################################################
########################################################## Intro of Script ###################
cat << "EOF"
 .===============================================================.
 |   '==='   /`\ '==='   |   ____.   |   |_______|   |   |   |   |
 |          / : |                |   |               |   |   |   |
 | _.._=====| '/ '===|   .======='   '===========.   |   |   |   |
 /`    \    | /          |                       |   |   |       |
|  .-._ '-"` (=======.   |   .===============.   |   |   '===.   |
|_/  |/   e  e\==.   |   |   |               |   |   |       | M |
 | S ||  >   @ )<|   |   |   |   .=======.   |   |   |===.   | 5 |
 | T | \  '--`/  |   |   |   |   |       |   |   |   |   |   | 7 |
 | A | / '--<`   |   |   |   |   |   |   |   |   '==='   |   ' R |
 | R |; ;     \\__'======.   |   |   |   |   |   |   |	 |   | o |
 | T / /      |.__)==,   |   |   |           |   |   |   |   | m |
 |  (_/,--.   ; //"""\\  |   |   '==========='   |   '==='   |   |
 |  { `|   \_/  ||___||  |   |                   |           |   |
 |   ;-\   / |  |(___)|  |   '===========.   |   '=======.   |   |
 |   | /  \  '-,\XXXXX/  |   .==========='   '=======.   |   |   |
 |   | \__|----' `"""`   |   |      SPOOFING ID      |   |   |   |
 |   '==================='   '======================='   '==='   |
 '===============================================================
EOF
echo -e "${BGreen} ================================================================="
echo -e "${White} HELLO, ${BRed}This script ${White}created ${BGreen}By M57R0m ${White}for changing ${BRed}MACs ${White}randomely"
echo -e "${BGreen} ================================================================="; echo ""
sleep 1
##############################################################################################

##################### Detection interface ###################
eth0=$(ip link show eth0 | awk '/ether/ {print $2}')
wlan0=$(ip link show wlan0 | awk '/ether/ {print $2}')
echo ""; echo -e "${BGreen} => Your mac is: "
echo "** For wlan0 interface is: ${wlan0}"
echo "** For eth0  interface is: ${eth0}"; echo ""

############################################ Creating New MAC ###################
Gmac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//') 
echo -e "${BWhite} ---------- New MAC will be set is ${BRed} [ ${Gmac} ]"; echo ""
#################################################################################



