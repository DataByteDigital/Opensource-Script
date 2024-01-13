<!---------------------------------------------- Single Command Installation------------------------------------------------------------->

wget https://raw.githubusercontent.com/DataByteDigital/Opensource-Script/main/linux/production/composer/composer_install.sh && sudo chmod +x composer_install.sh && ./composer_install.sh

<!---------------------------------------------- Single Command Installation------------------------------------------------------------->

yes | sudo apt-get install php-curl
yes | sudo apt-get install -y git libzip-dev zip unzip
yes | sudo apt install openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip

cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
ls
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
php /usr/local/bin/composer
