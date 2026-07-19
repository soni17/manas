# uninstall
sudo apt-get update -y
sudo apt-get purge -y --autoremove xlibre xserver-xlibre* nexussfan-archive-keyring

# remove repo
sudo rm -f /etc/apt/sources.list.d/xlibre-debian.sources
sudo rm -f /usr/share/keyrings/NexusSfan.pgp

# reinstall xorg
sudo apt-get install -y xorg
