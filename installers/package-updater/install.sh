sudo apt install -y \
  gnome-package-updater \
  package-update-indicator

#config file
mkdir -p ~/.config/package-update-indicator
cp installers/package-updater/package-update-indicator.conf ~/.config/package-update-indicator
