sudo apt install -y ./gnome-package-updater_43.0-1_amd64.deb

sudo apt-get install -y package-update-indicator

#config file
mkdir -p ~/.config/package-update-indicator
cp system/package-updater/package-update-indicator.conf ~/.config/package-update-indicator
