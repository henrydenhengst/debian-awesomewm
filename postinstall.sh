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
sudo nala install intel-microcode neovim mc git curl btop awesome lightdm kitty firefox-esr -y
sudo nala install geany feh neofetch filezilla arandr conky suckless-tools mpc123 mpd -y
sudo nala install nitrogen picom polybar scrot unclutter xsel xbacklight volumeicon-alsa -y
sudo nala install powerline fonts-powerline fonts-mononoki mpv vlc flameshot -y
sudo nala install evince libreoffice strawberry inkscape gimp darktable lynx ghostwriter w3m -y
sudo nala install syncthing handbrake pandoc pciutils pdf2svg pulseaudio alsa-utils -y
sudo nala install flatpak kitty arp-scan asciinema bash-completion bat bettercap binutils btop -y
sudo nala installcoreutils crunch curl dbus dirb dmidecode exa ffmpeg file filezilla fish -y
sudo nala install ghostscript git gnupg gparted gphoto2 hashcat hplip httrack iftop imagemagick -y 
sudo nala install jmtpfs keepassxc lshw lsof mc mtr nethogs nikto nmap p7zip gstreamer1.0-plugins-ugly -y
sudo nala install proxychains qbittorrent ranger remmina ripgrep rsync smartmontools sqlmap tmux -y 
sudo nala install tomb traceroute tre-command tree unrar unzip usbutils vbetool vnstat -y
sudo nala install yadm youtube-dl yt-dlp zip zsh fonts-crosextra-carlito fonts-crosextra-caladea -y
sudo nala install wget whatweb whois xclip luarocks gstreamer1.0-vaapi ufw -y
sudo nala install ttf-mscorefonts-installer libavcodec-extra gstreamer1.0-libav -y
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
sudo nala autoremove -y
sudo nala autoclean -y
