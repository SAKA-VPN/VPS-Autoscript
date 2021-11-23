#!/bin/bash
#Autoscript By JOHN SAKA
clear

echo " ===================================== "
echo "|      V2Ray-Agent Installation       |"
echo "|       Autoscript By JOHN SAKA       |"
echo " ===================================== "
sleep 1
echo "Installation start in 3 seconds"
sleep 1
echo "Installation start in 2 seconds"
sleep 1
echo "Installation start in 1 seconds"
sleep 1
echo ""

echo "Remove unused packages:"
sleep 1
apt autoremove -y && apt autoclean -y
echo ""

echo "Check for packages update:"
sleep 1
apt update
echo ""

echo "View all update available:"
sleep 1
apt list --upgradable
echo ""

echo "Update available packages:"
sleep 1
apt upgrade -y
echo ""
clear

echo "Install Speedtest CLI:"
sleep 1
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt install speedtest
echo ""

echo "Test network speed:"
speedtest -A
sleep 1
clear

echo "Install V2Ray-Agent:"
sleep 1
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/shell/install_en.sh" && chmod 700 /root/install_en.sh && mv /root/install_en.sh /root/install.sh && /root/install.sh
