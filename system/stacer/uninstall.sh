# uninstall
sudo apt-get purge -y --autoremove stacer

# delete config folder
sudo rm -rf ~/.config/stacer

# delete launcher icon
rm ~/.local/share/applications/stacer*
