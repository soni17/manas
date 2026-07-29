# uninstall 
sudo apt-get purge -y --autoremove tailscale

# remove repository
sudo rm /usr/share/keyrings/tailscale-archive-keyring.gpg
sudo rm /etc/apt/sources.list.d/tailscale.list
