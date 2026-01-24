# uninstall
sudo apt-get purge -y --autoremove helium-browser

# delete config folder
sudo rm -rf ~/.config/net.imput.helium

# delete launcher icon
rm ~/.local/share/applications/helium.desktop
