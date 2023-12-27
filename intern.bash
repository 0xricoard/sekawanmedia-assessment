#!/bin/bash

# Set Timezone
echo -e "\e[32mSetting Timezone to Asia/Jakarta...\e[0m"
sudo timedatectl set-timezone Asia/Jakarta
echo -e "\e[32mTimezone set to Asia/Jakarta.\e[0m"

# Update & Upgrade
echo -e "\e[32mUpdating and upgrading system...\e[0m"
sudo apt-get update > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
echo -e "\e[32mSystem updated and upgraded.\e[0m"

# Install Git, Curl, ZIP, Python3, & Python3-pip
echo -e "\e[32mInstalling Git, Curl, ZIP, Python3, and Python3-pip...\e[0m"
sudo apt-get install -y git curl zip python3 python3-pip > /dev/null 2>&1
echo -e "\e[32mGit, Curl, ZIP, Python3, and Python3-pip installed successfully.\e[0m"

# Install Docker
echo -e "\e[32mInstalling Docker...\e[0m"
sudo apt-get install -y ca-certificates curl gnupg > /dev/null 2>&1
sudo install -m 0755 -d /etc/apt/keyrings > /dev/null 2>&1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg > /dev/null 2>&1
sudo chmod a+r /etc/apt/keyrings/docker.gpg > /dev/null 2>&1

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update > /dev/null 2>&1
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose > /dev/null 2>&1
echo -e "\e[32mDocker installed successfully.\e[0m"
echo -e "\e[32mOtomasi selesai, Semua paket telah diinstall.\e[0m"