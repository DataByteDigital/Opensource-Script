sudo apt update
sudo apt upgrade -y
sudo apt install php8.1-fpm -y
sudo apt install php-mbstring php-xml php-bcmath php-curl -y
sudo apt install php-cli unzip -y

echo "PHP Installation completed"

## nginx install 
wget https://raw.githubusercontent.com/DataByteDigital/Opensource-Script/main/linux/production/nginx/nginx.sh
sudo chmod +x nginx.sh
./nginx.sh

