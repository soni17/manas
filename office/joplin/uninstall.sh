# uninstall
sudo apt-get purge -y --autoremove joplin

# remove repository
sudo extrepo disable joplin
sudo apt update -y
