<<comment

sudo apt-get install -y \
  gnome-package-updater \
  package-update-indicator

#config file
mkdir -p ~/.config/package-update-indicator
cp system/package-updater/package-update-indicator.conf ~/.config/package-update-indicator

comment