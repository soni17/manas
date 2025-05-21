# uninstall
sudo apt-get purge -y --autoremove chromium

# delete config folder
sudo rm -rf ~/.config/chromium

# delete launcher icon
rm ~/.local/share/applications/chromium.desktop
