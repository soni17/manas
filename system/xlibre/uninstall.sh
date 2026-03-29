# uninstall
sudo apt-get purge -y --autoremove xlibre xlibre-archive-keyring

# remove repository
sudo rm /usr/share/keyrings/NexusSfan.pgp
sudo rm /etc/apt/sources.list.d/xlibre-debian.sources
