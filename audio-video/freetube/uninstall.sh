# uninstall
sudo apt-get purge -y --autoremove freetube

# delete config folder
sudo rm -rf ~/.config/FreeTube

# delete launcher icon
rm ~/.local/share/applications/freetube*
