#!/bin/bash

echo "Atualizando o servidor Linux via apt-get..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
systemctl start apache2

echo "Baixando e copiando os arquivos da Aplicação Web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
