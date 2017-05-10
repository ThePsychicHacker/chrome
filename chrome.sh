#!/bin/bash

#some variables
DEFAULT_ROUTE=$(ip route show default | awk '/default/ {print $3}')
IFACE=$(ip route show | awk '(NR == 2) {print $3}')
JAVA_VERSION=`java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }'`
MYIP=$(ip route show | awk '(NR == 2) {print $9}')





######## Install Google Chrome
function installbrowser {
if [ ! -f /opt/google/chrome ]; then
	echo -e "\e[1;31mThis option will install Google Chrome! If already Installed it will replace it.\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing Google Chrome ======\033[m"
				sleep 2
				echo apt-get update && apt-get install libappindicator1
				echo 
				cd /root/Desktop
				wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
				dpkg -i google-chrome-stable_current_amd64.deb
				

			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] Chrome already installed !\e[0m"
	fi
}


function pause(){
echo -e "\n\n\033[32m Chrome is installed , run google-chrome to run it or see README.md if you are a root user .\033[m
\033[1;36m"
   read -sn 1 -p "Press any key to Continue"
}
########################################################
##             Main Menu Section
########################################################
function mainmenu {
echo -e "
\033[32m################################################################################\033[m
\033[1;36m
|                                                                              |
|                             CYBER-NINJA                                      |
|______________________________________________________________________________|
                          ########                  #
                      #################            #
                   ######################         #
                  #########################      #
                ############################
               ##############################
               ###############################
              ###############################
              ##############################
                              #    ########   #
                 ##        ###        ####   ##
                                      ###   ###
                                    ####   ###
               ####          ##########   ####
               #######################   ####
                 ####################   ####
                  ##################  ####
                    ############      ##
                       ########        ###
                      #########        #####
                    ############      ######
                   ########      #########
                     #####       ########
                       ###       #########
                      ######    ############
                     #######################
                     #   #   ###  #   #   ##
                     ########################
                      ##     ##   ##     ##

\033[m                                        
                  	    Script by ThePsychicHacker
                     	    Version : 1.0 \033[32m$version\033[m
Script Location : \033[32m$0\033[m
Connection Info :-----------------------------------------------
  Gateway: \033[32m$DEFAULT_ROUTE\033[m Interface: \033[32m$IFACE\033[m My LAN Ip: \033[32m$MYIP\033[m
\033[32m###############################################################################\033[m"
echo "Please Select any Choice:"
select menusel in "Google Chrome" "EXIT PROGRAM"; do
case $menusel in
	
	"Google Chrome")
		installbrowser
		pause;;
	

	"EXIT PROGRAM")
		clear && exit 0 ;;
		
	* )
		clear ;;
	
		
esac

break

done
}
while true; do mainmenu; done
