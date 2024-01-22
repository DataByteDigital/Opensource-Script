echo "---------------------Checking the System for Swap Information---------------------"

sudo swapon --show
free -h

echo "---------------------Checking Available Space on the Hard Drive Partition---------------------"

df -h

echo "---------------------Creating Swap File---------------------"

sudo fallocate -l 1G /swapfile
ls -lh /swapfile
-rw-r--r-- 1 root root 1.0G Apr 25 11:14 /swapfile

echo "--------------------- Enabling Swap File---------------------"

sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h

echo "--------------------- Making the Swap File Permanent---------------------"

sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "--------------------- Tuning Swap Settings Process Started ---------------------"

cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
cat /proc/sys/vm/vfs_cache_pressure
sudo sysctl vm.vfs_cache_pressure=50
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf

echo "--------------------- Swap File Process Completed---------------------"
