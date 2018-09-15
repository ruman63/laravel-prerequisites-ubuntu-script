#!/bin/sh
sudo apt update;

#Install git and curl 
sudo apt install -y git curl;
#php php-extensions
sudo apt install -y php php-common php-mbstring php-gd php-mysql php-sqlite3 php-xml php-zip php-json php-curl;
#sqlite, mysql & nginx
sudo apt install -y nginx sqlite3 mysql-server;

#Install composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer;

#Install Node, NPM & Yarn 
sudo apt install -y nodejs npm 
sudo npm -g i yarn

#Install laravel cli
composer global require laravel/installer;

#Add Composer global path
echo "export PATH=$PATH:$HOME/.config/composer/vendor/bin" | tee -a ~/.bashrc;

#Install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https;
sudo apt update;
sudo apt install -y code;
