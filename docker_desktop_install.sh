# Uninstall the tech preview or beta version of Docker Desktop for Linux. Run:

sudo apt install gnome-terminal
sudo apt remove docker-desktop
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.0-amd64.deb
sudo apt-get install ./docker-desktop-4.25.0-amd64.deb

sudo systemctl --user start docker-desktop

docker compose version

docker --version

docker version