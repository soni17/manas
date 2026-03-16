# uninstall
sudo apt-get purge -y --autoremove librewolf

# delete config folder
sudo rm -rf ~/.librewolf

# remove repository
sudo extrepo disable librewolf
sudo apt-get update -y
