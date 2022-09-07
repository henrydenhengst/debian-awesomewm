#!/usr/bin/env bash
#
#  _   _                             _              _   _                      _   
# | | | | ___ _ __  _ __ _   _    __| | ___ _ __   | | | | ___ _ __   __ _ ___| |_ 
# | |_| |/ _ \ '_ \| '__| | | |  / _` |/ _ \ '_ \  | |_| |/ _ \ '_ \ / _` / __| __|
# |  _  |  __/ | | | |  | |_| | | (_| |  __/ | | | |  _  |  __/ | | | (_| \__ \ |_ 
# |_| |_|\___|_| |_|_|   \__, |  \__,_|\___|_| |_| |_| |_|\___|_| |_|\__, |___/\__|
#                        |___/                                       |___/      
#
#==================================================================================
#
#          FILE:  postinstall.sh
#
#         USAGE:  bash postinstall.sh
#
#   DESCRIPTION:  Installation AwesomeWM on a clean vanilla Debian Sid (11)
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean vanilla Debian Sid (11) installed, NO GUI
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  01-01-2022
#      REVISION:  ---
#==================================================================================
#

sudo apt install nala
sudo nala install intel-microcode neovim mc git curl btop awesome lightdm kitty firefox-esr geany feh neofetch filezilla arandr conky dmenu mpc123 mpd neocomp -y
sudo nala install nitrogen picom polybar scrot unclutter xsel sleck slock xbacklight volumeicon-alsa powerline fonts-powerline fonts-mononoki mpv vlc flameshot -y
sudo nala install evince libreoffice strawberry inkscape gimp darktable lynx ghostwriter mdcat w3m syncthing handbrake pandoc pciutils pdf2svg pulseaudio alsa-utils -y
sudo nala install flatpak kitty arp-scan asciinema bash-completion bat bettercap binutils btop coreutils crunch curl dbus dirb dmidecode exa ffmpeg file filezilla fish -y
sudo nala install ghostscript git gnupg gparted gphoto2 hashcat hplip httrack iftop imagemagick jmtpfs keepassxc lshw lsof macchanger mc mtr nethogs nikto nmap p7zip -y
sudo nala install proxychains qbittorrent ranger remmina ripgrep rsync smartmontools sqlmap tmux tomb traceroute tre-command tree unrar unzip usbutils vbetool vnstat -y
sudo nala install yadm youtube-dl yt-dlp zip zsh fonts-crosextra-carlito fonts-crosextra-caladea wget whatweb whois xclip luarocks -y
sudo nala install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi ufw -y
sudo nala install build-essential dkms linux-headers-$(uname -r) -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.github.iwalton3.jellyfin-media-player -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub org.jitsi.jitsi-meet -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install flathub com.brave.Browser -y
flatpak install flathub org.briarproject.Briar -y
flatpak install flathub org.signal.Signal -y
sudo sh <(curl -L https://nixos.org/nix/install) --daemon
