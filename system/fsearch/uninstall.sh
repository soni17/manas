# uninstall
sudo apt-get purge -y --autoremove fsearch

# delete config folder
sudo rm -rf ~/.config/fsearch

# delete launcher icon
rm ~/.local/share/applications/io.github.cboxdoerfer.FSearch*
