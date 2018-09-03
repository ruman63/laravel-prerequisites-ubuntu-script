#!/bin/sh
sudo apt update;

#Install git and curl
sudo apt install -y git curl;
#Install PHP & Required PHP Extensions
sudo apt install -y php php-common php-mbstring php-gd php-mysql php-xml php-zip php-json php-curl php-mcrypt;
#Install Nginx
sudo apt install -y nginx;
#Install composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer;
#Install laravel cli
composer global require laravel/installer;
#Add Composer global path
export PATH=$PATH:$HOME/.config/composer/vendor/bin;


#Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https;
sudo apt update;
sudo apt install code;