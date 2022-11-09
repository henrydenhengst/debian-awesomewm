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
#   DESCRIPTION:  Installation AwesomeWM on a clean Debian Sid (11)
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Sid (11) installed.
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  01-01-2022
#      REVISION:  ---
#==================================================================================
#
sudo cp sources.list /etc/apt/sources.list
sudo cp -r nvim /home/henry/.config/nvim
sudo cp -r awesome /home/henry/.config/awesome 
sudo nala fetch
sudo nala update
sudo nala upgrade -y
sudo nala install intel-microcode firmware-linux neovim mc git curl btop awesome sddm kitty geany feh neofetch filezilla arandr conky suckless-tools mpc123 mpd nitrogen firmware-iwlwifi picom polybar scrot unclutter xsel xbacklight volumeicon-alsa powerline fonts-powerline fonts-mononoki mpv vlc flameshot evince lynx w3m pandoc pciutils pdf2svg pulseaudio alsa-utils flatpak arp-scan asciinema bash-completion bat binutils btop coreutils crunch curl dbus dirb dmidecode exa ffmpeg file fish ghostscript git gnupg gparted gphoto2 hashcat hplip httrack iftop imagemagick jmtpfs keepassxc lshw lsof mc mtr nethogs nikto nmap p7zip proxychains ranger remmina ripgrep rsync smartmontools sqlmap tmux tomb traceroute tre-command tree unrar unzip usbutils vbetool vnstat yadm youtube-dl yt-dlp zip zsh fonts-crosextra-carlito fonts-crosextra-caladea wget whatweb whois xclip luarocks xdotool ttf-mscorefonts-installer libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi ufw terminator firmware-linux-nonfree firmware-misc-nonfree printer-driver-cups-pdf lolcat toilet geany-plugins rename python3-pynvim python3-pip nodejs npm tor ncal cheese printer-driver-all -y
sudo nala install build-essential dkms linux-headers-$(uname -r) -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo systemctl enable sddm
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub org.jitsi.jitsi-meet -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install flathub com.brave.Browser -y
flatpak install flathub org.briarproject.Briar -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub io.lbry.lbry-app -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
flatpak install flathub org.onionshare.OnionShare -y
flatpak install flathub org.kde.kasts -y
sudo reboot
