# uninstall
sudo apt-get purge -y --autoremove httptoolkit

# delete config folder
sudo rm -rf ~/.config/httptoolkit

# delete launcher icon
rm ~/.local/share/applications/httptoolkit.desktop
