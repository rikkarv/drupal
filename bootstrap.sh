#!/usr/bin/env bash

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php8.1
sudo service apache2 restart

sudo apt -y install php8.1-gd php8.1-mysql php8.1-imap php8.1-curl php8.1-intl php8.1-pspell php8.1-sqlite3 php8.1-tidy php8.1-xsl php8.1-zip php8.1-mbstring php8.1-soap php8.1-opcache libonig5 php8.1-common php8.1-readline php8.1-xml php8.1-simplexml php8.1-dom php8.1-bcmath

sudo apt -y install unzip

sudo a2enmod rewrite

curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

sudo service apache2 restart