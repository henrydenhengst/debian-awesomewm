sudo apt install nala

sudo nala install unattended-upgrades arp-scan asciinema bash-completion bat binutils btop coreutils curl dmidecode evince exa feh ffmpeg file fish flameshot fonts-crosextra-caladea fonts-crosextra-carlito fonts-mononoki fonts-powerline geany ghostscript git gnupg gparted hashcat httrack iftop imagemagick keepassxc lolcat lshw lsof lynx mc mpc123 mtr ncal neofetch nethogs nmap p7zip pandoc pciutils pdf2svg powerline printer-driver-all printer-driver-cups-pdf proxychains ranger remmina rename ripgrep rsync smartmontools suckless-tools terminator tmux toilet tomb traceroute tre-command tree ttf-mscorefonts-installer ufw unrar unzip usbutils vlc w3m wget whois zip zsh -y

REBOOT

sudo mintupdate-automation upgrade enable

sudo nano /etc/apt/apt.conf.d/50unattended-upgrades


sudo -v ; curl https://rclone.org/install.sh | sudo bash

rclone version

	rclone v1.61.1
	- os/version: linuxmint 21.1 (64 bit)
	- os/kernel: 5.15.0-58-generic (x86_64)
	- os/type: linux
	- os/arch: amd64
	- go/version: go1.19.4
	- go/linking: static
	- go/tags: none

rclone config

n) New remote

onedrive

31 / Microsoft OneDrive
   \ (onedrive)
   
blank

blank

 1 / Microsoft Cloud Global
   \ (global)

Edit advanced config?
n) No (default)

Use web browser to automatically authenticate rclone with remote?
 * Say Y if the machine running rclone has a web browser you can use
 * Say N if running rclone on a (remote) machine without web browser access
If not sure try Y. If Y failed, try N.

y) Yes (default)

VOORBEELD:
rclone mount onedrive: /home/myname/onedrive --vfs-cache-mode=writes

Directory aanmaken!!! 
cd ~
mkdir onedrive

LAPTOP 1:
rclone mount onedrive: /home/smaak/onedrive --vfs-cache-mode=writes

LAPTOP 2:
rclone mount onedrive: /home/dc-kantine/onedrive --vfs-cache-mode=writes

Maak hier een 1drive.sh van en plaats dit bestanden hier /bin

Ga naar "systeeminstellingen"
"Opstarttoepassing"
"Opstarttoepassing toevoegen", verkennen, /bin/1drive.sh toevoegen



for rclone mount to emulate a local file system, sometimes need to use the rclone vfs file cache.
this is required for LibreOffice to edit files.
so using the webgui, for CacheMode, change off to writes
"Cloud storage objects have lots of properties which aren't like disk files - you can't extend them or write to the middle of them, so the VFS layer has to deal with that."
https://rclone.org/commands/rclone_mount/#vfs-virtual-file-system

for systemd service file, check out https://github.com/animosity22/homescripts/blob/master/systemd/rclone-movies.service
tho that is for dropbox, the overall service file format is a good starting point.


another gui is https://kapitainsky.github.io/RcloneBrowser/

rclone config file 
to find the rclone.conf and copy that to the laptop


