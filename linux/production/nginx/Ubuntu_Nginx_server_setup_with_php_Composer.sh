sudo apt update
sudo apt upgrade -y
sudo apt install neofetch -y
sudo apt install nano -y
sudo apt install php8.1-fpm php-mysql -y
sudo apt install php-mbstring php-xml php-bcmath php-curl -y
sudo apt install php-cli unzip -y
sudo apt install nginx -y
sudo apt install git -y
sudo apt-get install ufw
sudo ufw app list
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx HTTP'
yes | sudo ufw enable  
sudo ufw status
sudo ufw app list

sudo ufw status
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo netfilter-persistent save
sudo apt install php8.1-fpm php-mysql

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
git --version
ip addr show
hostname -I
curl -4 icanhazip.com
php -v
composer
