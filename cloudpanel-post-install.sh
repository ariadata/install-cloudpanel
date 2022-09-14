#!/bin/sh
set -e
clear

apt --yes clean
apt --yes update && apt -q --yes upgrade && apt --yes autoremove

apt --yes install locales

echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "LANG=en_US.utf-8" >> /etc/environment
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
locale-gen en_US.UTF-8

clear

echo -e $'\n=====================================\n\e[32mCloudpanel Post-Install successfully installed.\033[0m\n=====================================\n'
## reboot at the end
read -e -p $'Do you want to \e[31mreboot now\033[0m ? : ' -i "y" if_reboot_at_end
if [[ $if_reboot_at_end =~ ^([Yy])$ ]]
then
	reboot
	exit
fi
