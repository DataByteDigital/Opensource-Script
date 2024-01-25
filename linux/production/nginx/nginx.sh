sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y

sudo ufw app list
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx HTTP'
yes | sudo ufw enable  

sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo netfilter-persistent save

sudo ufw app list
sudo ufw status

echo "Nginx Installation completed"