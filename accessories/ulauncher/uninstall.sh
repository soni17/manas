# uninstall
sudo apt-get purge -y --autoremove ulauncher

# delete config folder
sudo rm -rf ~/.config/ulauncher

# delete autostarter
sudo rm -f ~/.config/autostart/ulauncher.desktop
