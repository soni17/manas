# uninstall
sudo apt-get purge -y --autoremove xlibre

# remove repository
sudo extrepo disable xlibre
sudo apt-get update -y
