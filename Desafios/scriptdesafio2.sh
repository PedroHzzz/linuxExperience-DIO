#!/bin/bash

echo "Iniciando o Script..."

echo "Atualizando o Servidor..."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y 
apt-get install unzip -y
apt-get install wget -y 

echo "Baixando arquivos e movendo para o diretório..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main 
cp -R ./ * /var/www/html


echo "Script Finalizado..."