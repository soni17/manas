# uninstall
sudo apt-get purge -y --autoremove slack-desktop

# remove repository
sudo extrepo disable slack
sudo apt-get update
