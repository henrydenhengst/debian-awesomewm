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
#   DESCRIPTION:  Installation AwesomeWM on a clean vanilla Cinnamon Debian Sid (11)
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean vanilla Cinnamon Debian Sid (11) installed.
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  01-01-2022
#      REVISION:  ---
#==================================================================================
#
sudo nala fetch
sudo nala update
sudo nala install intel-microcode firmware-linux neovim mc git curl btop awesome kitty geany feh neofetch filezilla arandr conky suckless-tools mpc123 mpd -y
sudo nala install nitrogen firmware-iwlwifi picom polybar scrot unclutter xsel xbacklight volumeicon-alsa powerline fonts-powerline fonts-mononoki mpv vlc flameshot -y
sudo nala install evince libreoffice strawberry inkscape gimp darktable lynx ghostwriter w3m syncthing handbrake pandoc pciutils pdf2svg pulseaudio alsa-utils -y
sudo nala install flatpak kitty arp-scan asciinema bash-completion bat binutils btop coreutils crunch curl dbus dirb dmidecode exa ffmpeg file filezilla fish -y
sudo nala install ghostscript git gnupg gparted gphoto2 hashcat hplip httrack iftop imagemagick jmtpfs keepassxc lshw lsof mc mtr nethogs nikto nmap p7zip -y
sudo nala install proxychains qbittorrent ranger remmina ripgrep rsync smartmontools sqlmap tmux tomb traceroute tre-command tree unrar unzip usbutils vbetool vnstat -y
sudo nala install yadm youtube-dl yt-dlp zip zsh fonts-crosextra-carlito fonts-crosextra-caladea wget whatweb whois xclip luarocks xdotool variey -y
sudo nala install ttf-mscorefonts-installer libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi ufw terminator -y
sudo nala install firmware-linux firmware-linux-nonfree firmware-misc-nonfree -y
sudo nala install qemu-kvm libvirt-daemon  bridge-utils virtinst libvirt-daemon-system -y
sudo nala install virt-top libguestfs-tools libosinfo-bin  qemu-system virt-manager -y
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
cd ~
mkdir git
cd git
git clone https://github.com/henrydenhengst/mynixos.git
git clone https://github.com/henrydenhengst/debian-awesomewm.git
cd ~
sudo nala autoremove -y
