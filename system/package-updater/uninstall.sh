# uninstall
sudo apt-get purge -y --autoremove package-update-indicator

# delete config folder
rm -rf ~/.config/package-update-indicator

# delete updates script
sudo rm /usr/bin/updates
