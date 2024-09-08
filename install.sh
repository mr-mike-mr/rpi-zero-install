#!/bin/bash
# CLEAR TERMINAL
clear

# GET CURRENT SCRIPT LOCATION
SCRIPT_LOCATION=$(dirname "$(realpath "$0")")

# UPDATE APT PACKAGES
sudo apt update -y
sudo apt full-upgrade -y

# INSTALL APT PACKAGES
sudo apt htop neofetch cpufetch curl wget vim cmake nmap git ufw rustc cargo python3 python3-pip nodejs npm php sqlite3 redis-server apache2 nginx mariadb-server postgresql -y

# CLEARE APT CACHE PACKAGES
sudo apt autoremove -y
sudo apt clean -y

# SETUP MYSQL
sudo mysql_secure_installation

# SETUP AND START UFW
sudo ufw limit 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw deny 3306
sudo ufw deny 5432
sudo ufw deny 20
sudo ufw deny 21
sudo ufw enable
sudo ufw status

# STOP SERVICES
sudo systemctl disable postgresql
sudo systemctl disable apache2
sudo systemctl disable nginx
sudo systemctl disable redis
sudo systemctl disable mysql
sudo systemctl stop postgresql
sudo systemctl stop apache2
sudo systemctl stop nginx
sudo systemctl stop redis
sudo systemctl stop mysql

# CREATE FOLDERS
mkdir /home/"${USER}"/scripts
mkdir /home/"${USER}"/notes
mkdir /home/"${USER}"/documents
mkdir /home/"${USER}"/pictures

# ADD SSH AUTH KEYS
mv /home/"${USER}"/.ssh/authorized_keys /home/"${USER}"/.ssh/authorized_keys-backup
mv "$SCRIPT_LOCATION"/config/authorized_keys /home/"${USER}"/.ssh

# ADD WPA CONFIG
mv /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf-backup
mv "$SCRIPT_LOCATION"/config/wpa_supplicant.conf /etc/wpa_supplicant

# END
clear
echo "Installation is done!"
cd /home/"${USER}" || exit