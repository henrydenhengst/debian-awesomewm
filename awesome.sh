#!/usr/bin/env bash
#
#  _   _                             _              _   _                      _   
# | | | | ___ _ __  _ __ _   _    __| | ___ _ __   | | | | ___ _ __   __ _ ___| |_ 
# | |_| |/ _ \ '_ \| '__| | | |  / _` |/ _ \ '_ \  | |_| |/ _ \ '_ \ / _` / __| __|
# |  _  |  __/ | | | |  | |_| | | (_| |  __/ | | | |  _  |  __/ | | | (_| \__ \ |_ 
# |_| |_|\___|_| |_|_|   \__, |  \__,_|\___|_| |_| |_| |_|\___|_| |_|\__, |___/\__|
#                        |___/                                       |___/      
#
#==============================================================================================================
#
#          FILE:  awesome.sh
#
#         USAGE:  bash awesome.sh
#
#   DESCRIPTION:  Installation AwesomeWM on a clean Debian Sid (11)
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Sid (11) weekly build 
#                 installed with nala and git, 
#                 edit sources.list add contrib non-free remove cd-rom
#          BUGS:  ---
#         NOTES:  https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-dvd/firmware-testing-amd64-DVD-1.iso
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  10-11-2022
#      REVISION:  ---
#===============================================================================================================
#
git clone https://github.com/henrydenhengst/wallpapers.git ~/wallpapers
cp bashrc ~/.bashrc
sudo nala fetch
sudo nala update
sudo nala upgrade -y
sudo nala install alsa-utils arandr arp-scan asciinema awesome bash-completion bat binutils btop cheese conky coreutils crunch curl dbus dirb dmidecode evince exa feh ffmpeg file firefox firmware-iwlwifi firmware-linux firmware-misc-nonfree fish flameshot flatpak fonts-crosextra-caladea fonts-crosextra-carlito fonts-mononoki fonts-powerline geany geany-plugins ghostscript git gnupg gparted gphoto2 gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi hashcat hplip httrack iftop imagemagick intel-microcode jmtpfs keepassxc kitty libavcodec-extra lolcat lshw lsof luarocks lynx mc mpc123 mpd mpv mtr ncal neofetch neovim nethogs nikto nitrogen nmap nodejs npm p7zip pandoc pciutils pdf2svg picom polybar powerline printer-driver-all printer-driver-cups-pdf proxychains pulseaudio python3-pip python3-pynvim ranger remmina rename ripgrep rsync scrot sddm smartmontools sqlmap suckless-tools terminator tmux toilet tomb tor traceroute tre-command tree ttf-mscorefonts-installer ufw unclutter unrar unzip usbutils vbetool vlc vnstat volumeicon-alsa w3m wget whatweb whois xbacklight xclip xdotool xsel yadm youtube-dl yt-dlp zip zsh -y
sudo nala install build-essential dkms linux-headers-$(uname -r) -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo systemctl enable sddm
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub org.jitsi.jitsi-meet -y
# flatpak install flathub io.gitlab.librewolf-community -y
# flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install flathub com.brave.Browser -y
flatpak install flathub org.briarproject.Briar -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub io.lbry.lbry-app -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
flatpak install flathub org.onionshare.OnionShare -y
flatpak install flathub org.kde.kasts -y
cp -r nvim/ ~/.config/nvim
cp -r awesome/ ~/.config/awesome 
sudo ufw allow ssh
sudo ufw enable
sudo reboot
