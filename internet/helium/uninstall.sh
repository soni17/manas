# uninstall
sudo apt-get purge -y --autoremove helium-browser

# remove repository
sudo rm -f /usr/share/keyrings/butterrepo.gpg
sudo rm -f /etc/apt/sources.list.d/butterrepo.list

# remove config folder
rm -rf ~/.config/net.imput.helium
