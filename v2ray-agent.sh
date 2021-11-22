#!/bin/bash
#Autoscript By JOHN SAKA
clear

echo " ===================================== "
echo "|      V2Ray-Agent Installation       |""
echo "|       Autoscript By John Saka       |"
echo " ===================================== "
sleep 1
echo "Installation start in 3 seconds"
sleep 1
echo "Installation start in 2 seconds"
sleep 1
echo "Installation start in 1 seconds"
sleep 1

echo "Remove unused packages"
sleep 1
apt autoremove -y && apt autoclean -y

echo "Check for packages update"
sleep 1
apt update

echo "View all update available"
sleep 1
apt list --upgradable

echo "Update available packages"
sleep 1
apt upgrade -y
