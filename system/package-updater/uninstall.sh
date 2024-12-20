sudo apt-get purge -y --autoremove \
  gnome-package-updater \
  package-update-indicator

# delete config folder
rm -rf ~/.config/package-update-indicator
