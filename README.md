# Debian with AwesomeWM


Install Debian 11 'weekly' clean, no desktop, with SSH using this [ISO file](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-dvd/firmware-testing-amd64-DVD-1.iso).

Edit sources.list:

`nano /etc/apt/sources.list`

- put a hashtag in front of the cdrom option
- add 'contrib' and non-free' to all repos that don't

Git clone this script:

`git clone https://github.com/henrydenhengst/debian-awesomewm.git`

Go into the created directory:

`cd debian-awesomewm`

Run the postinstall script:

`bash postinstall.sh`
