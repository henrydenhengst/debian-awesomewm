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
#          FILE:  nala-auto-upd.sh
#
#         USAGE:  ./nala-auto-upd.sh
#
#   DESCRIPTION:  nala auto update script, fetch then update
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  22-01-2023
#      REVISION:  ---
#==================================================================================
#
yes | sudo nala fetch -c NL -c BE -c DE --non-free --https-only --auto
sudo nala update
sudo nala upgrade -y
