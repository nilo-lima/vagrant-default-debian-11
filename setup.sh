#!/bin/bash

echo ""
echo "--- Iniciando instalacao do ambiente de desenvolvimento by [ NHLJ ] ---"

clear && sleep 2
echo ""
echo "--- Atualizando lista de pacotes ---"
sudo apt update

echo ""
echo "--- Atualizando o sistema ---"
sudo apt full-upgrade

echo ""
echo "--- Instalando pacotes basicos para desenvolvimento ---"
sudo apt install vim software-properties-common vim curl git binutils cpp flex gcc libarchive-zip-perl lynx m4 make ncftp nmap openssl perl perl-modules-5.32 unzip zip zlib1g-dev autoconf libtool bison autotools-dev g++ build-essential bzip2 -y

echo ""
echo "--- Instalando pacotes de rede ---"
sudo apt install net-tools tcpdump iptraf-ng sysv-rc-conf debconf-utils libncurses5-dev bwm-ng iftop tcptrack dstat ifstat nload htop -y

echo ""
echo "[OK] --- Ambiente de desenvolvimento concluido ---"

# Instale apartir daqui o que você desejar 
echo ""
sudo apt install wget curl unzip software-properties-common gnupg2 -y

echo ""
echo "Preparando ambiente Docker e Docker Compose"
sudo su -
apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common jq bash-completion
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list
apt update
apt -y install docker-ce docker-ce-cli containerd.io docker-compose

echo ""
echo "Criarndo grupo e usuario docker e adicionando usuario ao grupo"
sudo usermod -aG docker vagrant

docker system info