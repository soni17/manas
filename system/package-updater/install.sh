sudo apt-get install -y package-update-indicator

# add config file
mkdir -p ~/.config/package-update-indicator
cp system/package-updater/package-update-indicator.conf ~/.config/package-update-indicator

# updates script
sudo cp system/package-updater/updates /usr/bin
