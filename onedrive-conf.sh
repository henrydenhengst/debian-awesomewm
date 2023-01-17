sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04 ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
sudo apt install --no-install-recommends --no-install-suggests onedrive
mkdir -pv /home/henry/OneDrive
onedrive destination-directory /home/henry/OneDrive --synchronize
